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
                or name()='article-meta'
                or name()='article-title'
                or name()='front'
                or name()='title-group'
            " role="warn">
                &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-meta-title-group">
        <rule context="article-meta" role="error">
            <assert test="title-group">A &lt;title-group&gt; is required in &lt;article-meta&gt;.</assert>
        </rule>
    </pattern>

</schema>
