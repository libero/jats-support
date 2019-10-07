import module namespace libero = 'libero' at 'libero.xqm';
declare namespace sch = "http://purl.oclc.org/dsdl/schematron";
declare namespace svrl = "http://purl.oclc.org/dsdl/svrl";
declare namespace x="http://www.jenitennison.com/xslt/xspec";

declare variable $sch := doc('../src/support.sch');
declare variable $base-dir := substring-before($sch/base-uri(),'/src');

let $xspec := libero:sch2xspec($sch)

return (
  file:write(concat($base-dir,'/tests/xspec/support.xspec'),$xspec),
  for $test in $sch//(sch:assert|sch:report)
  let $template := libero:template($test)
  let $pass-path := ($base-dir||'/tests/xspec/cases/'||$test/@id||'/pass.xml')
  let $fail-path := ($base-dir||'/tests/xspec/cases/'||$test/@id||'/fail.xml')
  return (
    libero:write-files($pass-path,$template),
    libero:write-files($fail-path,$template)
  )
)