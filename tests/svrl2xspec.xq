import module namespace schematron = "http://github.com/Schematron/schematron-basex";
declare namespace svrl = 'xmlns="http://purl.oclc.org/dsdl/schematron';

declare variable $sch-file := doc('../src/support.sch');
declare variable $sch := schematron:compile($sch-file);
declare variable $test-dir := (substring-before(base-uri($sch-file),'/src')||'/tests/');
declare variable $dir := ($test-dir||'cases/');

let $list := 
<list>{
for $x in file:list($dir)
return 
if ($x='.DS_Store') then ()
else if (ends-with($x,'/')) then for $y in file:list($dir||$x) return <item file="{($dir||$x||$y)}">{doc($dir||$x||$y)}</item>
else <item file="{($dir||$x)}">{doc($dir||$x)}</item>
}</list>

let $xspec := 
<x:description xmlns:x="http://www.jenitennison.com/xslt/xspec" schematron="../../src/support.sch">
<x:scenario>{
for $x in $list//*:item
let $name := substring-after(substring-before($x/@file,'.xml'),'/cases/')
let $svrl := schematron:validate($x/descendant::*[1], $sch)
return
<x:scenario label="{$name}">
<x:context href="{('../cases/'||$name||'.xml')}"/>
{
  for $y in $svrl//(*:failed-assert|*:successful-report)
  let $n := $y/local-name()
  return 
  if ($n='failed-assert') then <x:expect-assert id="{$y/@id}" role="{$y/@role}"/>
  else <x:expect-report id="{$y/@id}" role="{$y/@role}"/>
}
</x:scenario>
}
</x:scenario>
</x:description>


return file:write(($test-dir||'xspec/support.xspec'),$xspec)