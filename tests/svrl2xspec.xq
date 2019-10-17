import module namespace schematron = "http://github.com/Schematron/schematron-basex";
declare namespace svrl = 'xmlns="http://purl.oclc.org/dsdl/schematron';

declare variable $sch-file := doc('../src/support.sch');
declare variable $sch := schematron:compile($sch-file);
declare variable $dir := (substring-before(base-uri($sch-file),'/src')||'/tests/cases/');

let $list := 
<list>{
for $x in file:list($dir)
return 
if ($x='.DS_Store') then ()
else if (ends-with($x,'/')) then for $y in file:list($dir||$x) return <item file="{($dir||$x||$y)}">{doc($dir||$x||$y)}</item>
else <item file="{($dir||$x)}">{doc($dir||$x)}</item>
}</list>

for $x in $list//*:item
let $name := substring-after(substring-before($x/@file,'.xml'),'/cases/')
let $svrl := schematron:validate($x/descendant::*[1], $sch)
let $path := (substring-before($dir,'cases')||'xspec/'||$name||'.xspec')
let $sub-dir := substring-before($path,tokenize($path,'/')[last()])
let $xspec := 
<x:description xmlns:x="http://www.jenitennison.com/xslt/xspec" schematron="../../src.support.sch">
<x:scenario label="{$name}">
<x:context href="{if (contains($name,'/')) then ('../../cases/'||$name) else ('../../cases/'||$name)}"/>
{
  for $y in $svrl//(*:failed-assert|*:successful-report)
  let $n := $y/name()
  return 
  if ($n='failed-assert') then <x:expect-assert id="{$y/@id}" role="{$y/@role}"/>
  else <x:expect-report id="{$y/@id}" role="{$y/@role}"/>
}
</x:scenario>
</x:description>
return (
  if(file:exists($sub-dir)) then () 
  else file:create-dir($sub-dir),
  
  file:write($path,$xspec)
)




