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

    <pattern id="article-title-parent">
        <rule context="article-title[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='title-group'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="front-parent">
        <rule context="front[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='article'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="title-group-parent">
        <rule context="title-group[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-meta-title-group">
        <rule context="article-meta" role="error">
            <assert test="title-group">
                &lt;<name/>&gt; requires a &lt;title-group&gt;.
            </assert>
        </rule>
    </pattern>

</schema>
