import module namespace schematron = "http://github.com/Schematron/schematron-basex";
declare namespace sch = "http://purl.oclc.org/dsdl/schematron";
declare namespace svrl = "http://purl.oclc.org/dsdl/svrl";

declare variable $sch-file := doc('../src/support.sch');
declare variable $sch := schematron:compile($sch-file);
declare variable $base-dir := substring-before($sch-file/base-uri(),'/src');
declare variable $test-dir := ($base-dir||'/tests/cases/');

let $list := 
  <list>{
    for $x in file:list($test-dir)
    return 
    if ($x='.DS_Store') then ()
    else if (ends-with($x,'/')) then for $y in file:list($test-dir||$x) return <item file="{($test-dir||$x||$y)}">{doc($test-dir||$x||$y)}</item>
    else <item file="{($test-dir||$x)}">{doc($test-dir||$x)}</item>
  }</list>

let $list2 := 
  <list>{
  for $x in $list//*:item/*
  let $svrl := schematron:validate($x, $sch)
  let $valid-list := <list>{
    for $y in $svrl//(svrl:failed-assert|svrl:successful-report)
    return processing-instruction{'expected-error'}{('message="'||normalize-space($y/svrl:text)||'" '||'node="'||$y/@location||'"')}
  }</list>
  return 
    <item file="{$x/parent::*:item/@file}">{
     (
       $x/preceding-sibling::processing-instruction('xml'),
       $x/preceding-sibling::processing-instruction('xml-model'),
       for $z in $valid-list//processing-instruction() return $z,
       '&#xa;',
       $x
     ) 
    }</item>
  }</list>


for $x in $list2/*:item
let $doc := ($x/processing-instruction(),$x/*)
return file:write($x/@file,$doc,map{'omit-xml-declaration':'no','indent':'yes'})

