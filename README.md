Libero JATS support
===================

[![Build Status](https://travis-ci.com/libero/jats-support.svg?branch=master)](https://travis-ci.com/libero/jats-support)

The library contains [Schematron](http://schematron.com/) that can be applied to any [Journal Article Tag Suite
 (JATS)](https://jats.nlm.nih.gov/) document to check for native support in [Libero](https://libero.pub).
 
It uses [XSLT 1.0](https://www.w3.org/TR/1999/REC-xslt-19991116) so that it is compatible with
[libxslt](http://xmlsoft.org/XSLT/intro.html), and so natively supported by languages such as PHP and Python.
 
Getting started
---------------

Apply [`src/support.sch`](src/support.sch) to your document, using, for example:

- [Oxygen XML Editor](https://www.oxygenxml.com/demo/Schematron_Validation.html)
- [XML Validator library](https://github.com/libero/xml-validator) (PHP)
- [lxml](https://lxml.de/validation.html#id2) (Python)

Getting help
------------

- Report a bug or request a feature on [GitHub](https://github.com/libero/libero/issues/new/choose).
- Ask a question on the [Libero Community Slack](https://libero.pub/join-slack).
- Read the [code of conduct](https://libero.pub/code-of-conduct).
