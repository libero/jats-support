<?xml version="1.0" encoding="UTF-8"?>

<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">

    <pattern id="attribute-whitelist">
        <rule context="@*">
            <assert test="
                name()='kwd-group-type'
                or name()='xml:lang'
            " role="warn">
                @<name/> is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="element-whitelist">
        <rule context="*">
            <assert test="
                name()='article'
                or name()='kwd'
                or name()='kwd-group'
                or name()='title'
            " role="warn">
                &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="kwd-parent">
        <rule context="kwd[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='kwd-group'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="kwd-group-parent">
        <rule context="kwd-group[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="kwd-group-kwd">
        <rule context="kwd-group">
            <assert test="kwd" role="warn">
                &lt;<name/>&gt; without any &lt;kwd&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="kwd-group">
        <rule context="kwd-group[not(@kwd-group-type)]">
            <assert test="title" role="warn">
                &lt;<name/>&gt; is ignored if there is no &lt;title&gt; or @kwd-group-type.
            </assert>
        </rule>
        <rule context="kwd-group">
            <assert test="
                @kwd-group-type='author-keywords'
                or @kwd-group-type='research-organism'
            " role="warn">
                &lt;<name/> kwd-group-type="<value-of select="@kwd-group-type"/>"&gt; is ignored if there is no &lt;title&gt;.
            </assert>
        </rule>
    </pattern>

</schema>
