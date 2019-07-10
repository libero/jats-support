<?php

declare(strict_types=1);

namespace tests\Libero\JatsSupport;

use DOMNode;
use DOMNodeList;
use FluentDOM;
use FluentDOM\DOM\Document;
use FluentDOM\DOM\ProcessingInstruction;
use FluentDOM\Loader\Options;
use Libero\XmlValidator\CompositeValidator;
use Libero\XmlValidator\Failure;
use Libero\XmlValidator\RelaxNgValidator;
use Libero\XmlValidator\SchematronValidator;
use Libero\XmlValidator\ValidationFailed;
use Libero\XmlValidator\XmlValidator;
use LogicException;
use PHPUnit\Framework\TestCase;
use Symfony\Component\Finder\Finder;
use Symfony\Component\Finder\SplFileInfo;
use function array_map;
use function array_reduce;
use function count;
use function Functional\map;
use function Functional\sort;
use function implode;
use function is_int;
use function is_readable;
use function preg_match_all;
use function sprintf;
use function str_replace;
use const PHP_EOL;
use const PREG_SET_ORDER;

final class SchemaTest extends TestCase
{
    /**
     * @test
     * @dataProvider fileProvider
     */
    public function unsupported_elements_are_flagged(Document $input, XmlValidator $validator, array $expected) : void
    {
        if (0 === count($expected)) {
            $this->expectNotToPerformAssertions();

            try {
                $validator->validate($input);
            } catch (ValidationFailed $e) {
                $this->fail(
                    "Document is not considered valid:\n".
                    implode(PHP_EOL, array_map([$this, 'stringifyFailure'], $e->getFailures()))
                );
            }

            return;
        }

        try {
            $validator->validate($input);
            $this->fail('Document is considered valid when it is not');
        } catch (ValidationFailed $e) {
            $this->assertEquals($expected, $this->normaliseFailuresOrder($e->getFailures()));
        }
    }

    public function fileProvider() : array
    {
        $files = Finder::create()->files()
            ->name('*.xml')
            ->in(__DIR__.'/cases');

        return iterator_to_array($this->extractSchemas($files));
    }

    private function extractSchemas(Finder $files) : iterable
    {
        foreach ($files as $file) {
            $input = FluentDOM::load($file->getPathname(), 'text/xml', [Options::ALLOW_FILE => true]);
            $input->registerNamespace('jats', 'http://jats.nlm.nih.gov');

            yield $file->getRelativePathname() => [
                $input,
                $this->findValidator($input, $file),
                $this->findExpectedFailures($input, $file),
            ];
        }
    }

    private function findValidator(Document $dom, SplFileInfo $file) : XmlValidator
    {
        $validators = map(
            $dom('/processing-instruction("xml-model")'),
            function (ProcessingInstruction $instruction) use ($file) : XmlValidator {
                $parsed = $this->parseProcessingInstruction($instruction, $file);
                $schema = "{$file->getPath()}/{$parsed['href']}";
                if (!is_readable($schema)) {
                    throw new LogicException("Failed to read schema {$schema} in {$file->getRelativePathname()}");
                }

                switch ($parsed['schematypens']) {
                    case 'http://relaxng.org/ns/structure/1.0':
                        return new RelaxNgValidator($schema);
                    case 'http://purl.oclc.org/dsdl/schematron':
                        return new SchematronValidator($schema);
                    default:
                        throw new LogicException(
                            "Unknown schematypens {$parsed['schematypens']} in {$file->getRelativePathname()}"
                        );
                }
            }
        );

        return 1 === count($validators) ? $validators[0] : new CompositeValidator(...$validators);
    }

    private function parseProcessingInstruction(ProcessingInstruction $instruction, SplFileInfo $file) : array
    {
        $valid = preg_match_all(
            '~([a-z]+)="(.*?)(?<!\\\)"~',
            $instruction->nodeValue,
            $matches,
            PREG_SET_ORDER
        );

        if (!$valid) {
            throw new LogicException("Failed to parse processing instruction in {$file->getRelativePathname()}");
        }

        return array_reduce(
            $matches,
            function (array $carry, array $parts) {
                $carry[$parts[1]] = str_replace('\"', '"', $parts[2]);

                return $carry;
            },
            []
        );
    }

    private function findExpectedFailures(Document $dom, SplFileInfo $file) : array
    {
        return $this->normaliseFailuresOrder(
            map(
                $dom('/processing-instruction("expected-error")'),
                function (ProcessingInstruction $instruction) use ($dom, $file) : Failure {
                    $parsed = $this->parseProcessingInstruction($instruction, $file);

                    if (isset($parsed['node'])) {
                        $nodes = $dom->xpath()->evaluate($parsed['node'], null, true);
                        if (!$nodes instanceof DOMNodeList || !$node = $nodes->item(0)) {
                            throw new LogicException(
                                "Failed to match {$parsed['node']} in {$file->getRelativePathname()}"
                            );
                        }
                    }

                    return new Failure(
                        $parsed['message'],
                        isset($parsed['line']) ? (int) $parsed['line'] : (isset($node) ? $node->getLineNo() : null),
                        $node ?? null
                    );
                }
            )
        );
    }

    private function stringifyFailure(Failure $failure) : string
    {
        if (!$failure->getNode() instanceof DOMNode && !is_int($failure->getLine())) {
            return $failure->getMessage();
        }

        if (!$failure->getNode() instanceof DOMNode) {
            return sprintf('%s (line %s)', $failure->getMessage(), $failure->getLine());
        }

        return sprintf('%s (%s)', $failure->getMessage(), $failure->getNode()->getNodePath());
    }

    /**
     * @param array<Failure> $failures
     *
     * @return array<Failure>
     */
    private function normaliseFailuresOrder(array $failures) : array
    {
        return sort(
            $failures,
            function (Failure $a, Failure $b) {
                if ($a->getLine() !== $b->getLine()) {
                    return $a->getLine() <=> $b->getLine();
                }

                if (!$a->getNode() instanceof DOMNode || !$b->getNode() instanceof DOMNode) {
                    return $a->getNode() instanceof DOMNode <=> $b->getNode() instanceof DOMNode;
                }

                if ($a->getNode()->getNodePath() !== $b->getNode()->getNodePath()) {
                    return $a->getNode()->getNodePath() <=> $b->getNode()->getNodePath();
                }

                return $a->getMessage() <=> $b->getMessage();
            }
        );
    }
}
