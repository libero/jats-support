<?xml version="1.0" encoding="UTF-8"?>

<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">

    <pattern id="attribute-whitelist">
        <rule context="@*">
            <assert test="
                name()='subj-group-type'
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
                or name()='article-meta'
                or name()='article-title'
                or name()='body'
                or name()='bold'
                or name()='front'
                or name()='italic'
                or name()='p'
                or name()='sec'
                or name()='sub'
                or name()='subj-group'
                or name()='subject'
                or name()='sup'
                or name()='title'
                or name()='title-group'
            " role="warn">
                &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-meta_title-group">
        <rule context="article-meta" role="error">
            <assert test="title-group">
                &lt;<name/>&gt; requires a &lt;title-group&gt;.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-title_parent">
        <rule context="article-title[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='title-group'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="body_parent">
        <rule context="body[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="
                $parent='article'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="front_parent">
        <rule context="front[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='article'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="p_parent">
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

    <pattern id="sec_parent">
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

    <pattern id="subj-group">
        <rule context="subj-group[not(@subj-group-type)]">
            <assert test="true" role="warn">
                &lt;<name/>&gt; without a @subj-group-type is ignored.
            </assert>
        </rule>
        <rule context="subj-group">
            <assert test="
                @subj-group-type='heading'
            " role="warn">
                &lt;<name/> subj-group-type="<value-of select="@subj-group-type"/>"&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="subj-group_parent">
        <rule context="subj-group[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='article-categories'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="subj-group_subject">
        <rule context="subj-group">
            <assert test="subject" role="warn">
                &lt;<name/>&gt; without any &lt;subject&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="title_parent">
        <rule context="title[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="
                $parent='sec'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="title-group_parent">
        <rule context="title-group[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

</schema>
