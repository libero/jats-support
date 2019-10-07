module namespace libero = 'libero';
import module namespace schematron = "http://github.com/Schematron/schematron-basex";
declare namespace xsl="http://www.w3.org/1999/XSL/Transform";
declare namespace sch = "http://purl.oclc.org/dsdl/schematron";
declare namespace svrl = "http://purl.oclc.org/dsdl/svrl";
declare namespace x="http://www.jenitennison.com/xslt/xspec";

declare variable $libero:base-sch := doc('../src/support.sch');
declare variable $libero:base-dir := substring-before($libero:base-sch/base-uri(),'/src');

declare function libero:sch2xspec($sch){
<x:description xmlns:x="http://www.jenitennison.com/xslt/xspec" schematron="../../src/schematron.sch">
{
  for $x in $sch//sch:rule/(sch:report|sch:assert)
  let $id := $x/@id
  let $pass := element {concat('x:expect-not-',$x/local-name())} {attribute {'id'} {$id}, attribute {'role'} {$x/@role}}
  let $fail := element {concat('x:expect-',$x/local-name())} {attribute {'id'} {$id}, attribute {'role'} {$x/@role}}
  return (
   <x:scenario label="{concat($id,'-pass')}">
     <x:context href="{concat('./cases/','pass.xml')}"/>
     {$pass}
   </x:scenario>,
   <x:scenario label="{concat($id,'-fail')}">
      <x:context href="{concat('./cases/','fail.xml')}"/>
      {$fail}
   </x:scenario>)
}
</x:description>};


declare function libero:template($assert-or-report){
  let $pi := processing-instruction{'oxygen'}{('SCHSchema="'||'../../../../src/support.sch'||'"') }
  return (
    $pi,
    <article xmlns:ali="http://www.niso.org/schemas/ali/1.0/" xmlns:mml="http://www.w3.org/1998/Math/MathML" xmlns:xlink="http://www.w3.org/1999/xlink">
      <front/>
      <body/>
      <back/>
    </article>
  )
};


declare function libero:write-files($path,$file){
  let $token := tokenize($path,'/')[last()]
  return
  (
    if(file:exists($path)) 
    then () 
    else file:create-dir(substring-before($path,('/'||$token)))
    ,
    file:write($path,$file,map{'indent':'yes'})
  )
};

