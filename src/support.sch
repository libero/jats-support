<?xml version="1.0" encoding="UTF-8"?>

<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">

    <pattern id="attribute-whitelist">
        <rule context="@*">
            <assert test="
                name()='xml:lang'
            " role="warn">
                @<name/> is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="element-whitelist">
        <rule context="*">
            <assert test="
                name()='article'
                or name()='body'
                or name()='p'
                or name()='sec'
                or name()='title'
            " role="warn">
                &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="p-parent">
        <rule context="p[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="
                $parent='body'
                or $parent='sec'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="sec-parent">
        <rule context="sec[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="
                $parent='body'
                or $parent='sec'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

</schema>
