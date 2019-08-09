<?xml version="1.0" encoding="UTF-8"?>

<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">

    <ns prefix="xlink" uri="http://www.w3.org/1999/xlink"/>

    <pattern id="attribute-whitelist">
        <rule context="@*">
            <assert id="attribute-whitelist-assert-1" test="
                name()='article-type'
                or name()='content-type'
                or name()='contrib-type'
                or name()='date-type'
                or name()='iso-8601-date'
                or name()='kwd-group-type'
                or name()='mimetype'
                or name()='mime-subtype'
                or name()='name-style'
                or name()='person-group-type'
                or name()='pub-id-type'
                or name()='subj-group-type'
                or name()='xlink:href'
                or name()='xml:base'
                or name()='xml:lang'
            " role="warn">
                @<name/> is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="element-whitelist">
        <rule context="*">
            <assert id="element-whitelist-assert-1" test="
                name()='aff'
                or name()='alt-text'
                or name()='article'
                or name()='article-categories'
                or name()='article-meta'
                or name()='article-title'
                or name()='back'
                or name()='body'
                or name()='bold'
                or name()='caption'
                or name()='contrib'
                or name()='contrib-group'
                or name()='day'
                or name()='element-citation'
                or name()='ext-link'
                or name()='fig'
                or name()='front'
                or name()='given-names'
                or name()='graphic'
                or name()='italic'
                or name()='kwd'
                or name()='kwd-group'
                or name()='month'
                or name()='name'
                or name()='p'
                or name()='person-group'
                or name()='prefix'
                or name()='pub-date'
                or name()='pub-id'
                or name()='ref'
                or name()='ref-list'
                or name()='sec'
                or name()='self-uri'
                or name()='source'
                or name()='sub'
                or name()='subj-group'
                or name()='subject'
                or name()='suffix'
                or name()='sup'
                or name()='surname'
                or name()='title'
                or name()='title-group'
                or name()='year'
            " role="warn">
                &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="aff_parent">
        <rule context="aff[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="aff_parent-assert-1" test="$parent='contrib'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="alt-text">
        <rule context="alt-text">
            <assert id="alt-text-assert-1" test="count(preceding-sibling::alt-text)=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="alt-text_parent">
        <rule context="alt-text[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="alt-text_parent-assert-1" test="$parent='graphic'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-type">
        <rule context="@article-type">
            <assert id="article-type-assert-1" test="
                current()='research-article'
            " role="warn">
                @<name/>="<value-of select="current()"/>" is ignored.
            </assert>
            <assert id="article-type-assert-2" test="count(parent::article[front/article-meta/article-categories/subj-group[@subj-group-type='display-channel']/subject])=0" role="warn">
                @<name/> is ignored if there is a &lt;subj-group subj-group-type="display-channel"&gt;.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-type_parent">
        <rule context="@article-type[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="article-type_parent-assert-1" test="$parent='article'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-categories_parent">
        <rule context="article-categories[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="article-categories_parent-assert-1" test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-meta_title-group">
        <rule context="article-meta" role="error">
            <assert id="article-meta_title-group-assert-1" test="title-group">
                &lt;<name/>&gt; requires a &lt;title-group&gt;.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-title">
        <rule context="article-title">
            <assert id="article-title-assert-1" test="count(preceding-sibling::article-title)=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-title_parent">
        <rule context="article-title[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="article-title_parent-assert-1" test="
                $parent='element-citation'
                or $parent='title-group'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="back_parent">
        <rule context="back[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="back_parent-assert-1" test="
                $parent='article'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="body_parent">
        <rule context="body[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="body_parent-assert-1" test="
                $parent='article'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="bold_parent">
        <rule context="bold[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="bold_parent-assert-1" test="
                $parent!='element-citation'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="caption_parent">
        <rule context="caption[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="caption_parent-assert-1" test="
                $parent='fig'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="content-type_parent">
        <rule context="@content-type[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="content-type_parent-assert-1" test="
                $parent='self-uri'
            " role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="contrib">
        <rule context="contrib[not(@contrib-type)]">
            <assert id="contrib-assert-1" test="true" role="warn">
                &lt;<name/>&gt; without a @contrib-type is ignored.
            </assert>
        </rule>
        <rule context="contrib[not(@contrib-type='author')]">
            <assert id="contrib-assert-2" test="true" role="warn">
                &lt;<name/> contrib-type="<value-of select="@contrib-type"/>"&gt; is ignored.
            </assert>
        </rule>
        <rule context="contrib[not(name)]">
            <assert id="contrib-assert-3" test="title" role="warn">
                &lt;<name/>&gt; is ignored if there is no &lt;name&gt;.
            </assert>
        </rule>
    </pattern>

    <pattern id="contrib_parent">
        <rule context="contrib[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="contrib_parent-assert-1" test="$parent='contrib-group'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="contrib-group_parent">
        <rule context="contrib-group[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="contrib-group_parent-assert-1" test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="date-type_parent">
        <rule context="@date-type[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="date-type_parent-assert-1" test="$parent='pub-date'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="day">
        <rule context="day">
            <assert id="day-assert-1" test="number(.)=." role="warn">
                &lt;<name/>&gt;<value-of select="."/>&lt;/<name/>&gt; is ignored.
            </assert>
            <assert id="day-assert-2" test="count(preceding-sibling::day[number(.)=.])=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="day_parent">
        <rule context="day[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="day_parent-assert-1" test="$parent='pub-date'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="element-citation">
        <rule context="element-citation">
            <assert id="element-citation-assert-1" test="article-title" role="warn">
                &lt;<name/>&gt; without an &lt;article-title&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="element-citation_parent">
        <rule context="element-citation[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="element-citation_parent-assert-1" test="
                $parent='ref'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="ext-link">
        <rule context="ext-link[not(contains(@xlink:href, ':') or ancestor-or-self::*[contains(@xml:base, ':')])]" role="warn">
            <assert id="ext-link-assert-1" test="true">
                &lt;<name/>&gt; without an absolute @xlink:href is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="ext-link_parent">
        <rule context="ext-link[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="ext-link_parent-assert-1" test="
                $parent!='article-meta'
                and $parent!='contrib'
                and $parent!='contrib-group'
                and $parent!='element-citation'
                and $parent!='fig'
                and $parent!='graphic'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="fig">
        <rule context="fig">
            <assert id="fig-assert-1" test="
                graphic[
                    (@mimetype='image' and @mime-subtype='jpeg')
                    or
                    ('.jpg'=translate(substring(@xlink:href, string-length(@xlink:href)-3), 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))
                    or
                    ('.jpeg'=translate(substring(@xlink:href, string-length(@xlink:href)-4), 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))
                ]
            " role="warn">
                &lt;<name/>&gt; without a JPEG &lt;graphic&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="fig_parent">
        <rule context="fig[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="fig_parent-assert-1" test="
                $parent='body'
                or $parent='sec'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="front_parent">
        <rule context="front[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="front_parent-assert-1" test="$parent='article'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="given-names_parent">
        <rule context="given-names[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="given-names_parent-assert-1" test="$parent='name'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="graphic">
        <rule context="graphic[not(starts-with(@xlink:href, 'http://') or starts-with(@xlink:href, 'https://') or (ancestor-or-self::*[starts-with(@xml:base, 'http://')]) or (ancestor-or-self::*[starts-with(@xml:base, 'https://')]))]" role="warn">
            <assert id="graphic-assert-1" test="true">
                &lt;<name/>&gt; without an absolute HTTP @xlink:href is ignored.
            </assert>
        </rule>
        <rule context="
            graphic[not(
                (@mimetype='image' and @mime-subtype='jpeg')
                or
                ('.jpg'=translate(substring(@xlink:href, string-length(@xlink:href)-3), 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))
                or
                ('.jpeg'=translate(substring(@xlink:href, string-length(@xlink:href)-4), 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))
            )]
        " role="warn">
            <assert id="graphic-assert-2" test="true">
                &lt;<name/>&gt; is ignored if it is not a JPEG.
            </assert>
        </rule>
        <rule context="graphic">
            <assert id="graphic-assert-3" test="
                count(preceding-sibling::graphic[
                    (@mimetype='image' and @mime-subtype='jpeg')
                    or
                    ('.jpg'=translate(substring(@xlink:href, string-length(@xlink:href)-3), 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))
                    or
                    ('.jpeg'=translate(substring(@xlink:href, string-length(@xlink:href)-4), 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))
                ])=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="graphic_parent">
        <rule context="graphic[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="graphic_parent-assert-1" test="
                $parent='body'
                or $parent='fig'
                or $parent='sec'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="iso-8601-date_parent">
        <rule context="@iso-8601-date[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="iso-8601-date_parent-assert-1" test="$parent='pub-date'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="italic_parent">
        <rule context="italic[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="italic_parent-assert-1" test="
                $parent!='element-citation'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="kwd_parent">
        <rule context="kwd[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="kwd_parent-assert-1" test="$parent='kwd-group'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="kwd-group">
        <rule context="kwd-group[not(@kwd-group-type)]">
            <assert id="kwd-group-assert-1" test="title" role="warn">
                &lt;<name/>&gt; is ignored if there is no &lt;title&gt; or @kwd-group-type.
            </assert>
        </rule>
        <rule context="kwd-group">
            <assert id="kwd-group-assert-2" test="
                @kwd-group-type='author-keywords'
                or @kwd-group-type='research-organism'
            " role="warn">
                &lt;<name/> kwd-group-type="<value-of select="@kwd-group-type"/>"&gt; is ignored if there is no &lt;title&gt;.
            </assert>
        </rule>
    </pattern>

    <pattern id="kwd-group_kwd">
        <rule context="kwd-group">
            <assert id="kwd-group_kwd-assert-1" test="kwd" role="warn">
                &lt;<name/>&gt; without any &lt;kwd&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="kwd-group_parent">
        <rule context="kwd-group[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="kwd-group_parent-assert-1" test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="mimetype_parent">
        <rule context="@mimetype[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="mimetype_parent-assert-1" test="$parent='graphic'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="mime-subtype_parent">
        <rule context="@mime-subtype[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="mime-subtype_parent-assert-1" test="$parent='graphic'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="month">
        <rule context="month">
            <assert id="month-assert-1" test="number(.)=." role="warn">
                &lt;<name/>&gt;<value-of select="."/>&lt;/<name/>&gt; is ignored.
            </assert>
            <assert id="month-assert-2" test="count(preceding-sibling::month[number(.)=.])=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="month_parent">
        <rule context="month[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="month_parent-assert-1" test="$parent='pub-date'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="name">
        <rule context="name">
            <assert id="name-assert-1" test="count(preceding-sibling::name)=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="name_parent">
        <rule context="name[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="name_parent-assert-1" test="
                $parent='contrib'
                or $parent='person-group'
             " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="name-style_parent">
        <rule context="@name-style[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="name-style_parent-assert-1" test="$parent='name'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="p_parent">
        <rule context="p[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="p_parent-assert-1" test="
                $parent='body'
                or $parent='caption'
                or $parent='sec'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="person-group">
        <rule context="person-group[not(@person-group-type)]">
            <assert id="person-group-assert-1" test="true" role="warn">
                &lt;<name/>&gt; without a @person-group-type is ignored.
            </assert>
        </rule>
        <rule context="person-group[not(@person-group-type='author')]">
            <assert id="person-group-assert-2" test="true" role="warn">
                &lt;<name/> person-group-type="<value-of select="@person-group-type"/>"&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="person-group_parent">
        <rule context="person-group[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="person-group_parent-assert-1" test="
                $parent='element-citation'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="prefix_parent">
        <rule context="prefix[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="prefix_parent-assert-1" test="$parent='name'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="pub-date">
        <rule context="pub-date[not(@date-type)]">
            <assert id="pub-date-assert-1" test="true" role="warn">
                &lt;<name/>&gt; without a @date-type is ignored.
            </assert>
        </rule>
        <rule context="pub-date[not(@date-type='pub')]">
            <assert id="pub-date-assert-2" test="true" role="warn">
                &lt;<name/> date-type="<value-of select="@date-type"/>"&gt; is ignored.
            </assert>
        </rule>
        <rule context="pub-date[
            not(@iso-8601-date)
            or
            not(
                (string-length(@iso-8601-date)=10 or substring(@iso-8601-date, 11, 1)='T')
                and
                substring(@iso-8601-date, 5, 1)='-' and substring(@iso-8601-date, 8, 1)='-'
            )
        ]">
            <assert id="pub-date-assert-3" test="year[number(.)=.] and month[number(.)=.] and day[number(.)=.]" role="warn">
                &lt;<name/> date-type="<value-of select="@date-type"/>"&gt; is ignored if there is no @iso-8601-date, nor numbers in &lt;year&gt;, &lt;month&gt; and &lt;day&gt;.
            </assert>
        </rule>
        <rule context="@iso-8601-date[parent::pub-date]">
            <assert id="pub-date-assert-4" test="
                (string-length(.)=10 or substring(., 11, 1)='T')
                and
                substring(., 5, 1)='-' and substring(., 8, 1)='-'
            " role="warn">
                @<name/>="<value-of select="."/>" is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="pub-date_parent">
        <rule context="pub-date[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="pub-date_parent-assert-1" test="
                $parent='article-meta'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="pub-id">
        <rule context="pub-id[not(@pub-id-type)]">
            <assert id="pub-id-assert-1" test="true" role="warn">
                &lt;<name/>&gt; without a @pub-id-type is ignored.
            </assert>
        </rule>
        <rule context="pub-id[not(@pub-id-type='doi')]">
            <assert id="pub-id-assert-2" test="true" role="warn">
                &lt;<name/> pub-id-type="<value-of select="@pub-id-type"/>"&gt; is ignored.
            </assert>
        </rule>
        <rule context="pub-id">
            <let name="type" value="@pub-id-type"/>
            <assert id="pub-id-assert-3" test="count(preceding-sibling::pub-id[@pub-id-type=$type])=0" role="warn">
                Extra &lt;<name/> pub-id-type="<value-of select="$type"/>"&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="pub-id_parent">
        <rule context="pub-id[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="pub-id_parent-assert-1" test="
                $parent='element-citation'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="pub-id-type_parent">
        <rule context="@pub-id-type[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="pub-id-type_parent-assert-1" test="
                $parent='pub-id'
            " role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="ref-list_parent">
        <rule context="ref-list[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="ref-list_parent-assert-1" test="$parent='back'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="sec_parent">
        <rule context="sec[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="sec_parent-assert-1" test="
                $parent='body'
                or $parent='sec'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="self-uri">
        <rule context="self-uri[not(@content-type)]" role="warn">
            <assert id="self-uri-assert-1" test="true">
                &lt;<name/>&gt; without a @content-type is ignored.
            </assert>
        </rule>
        <rule context="self-uri[not(@content-type='pdf')]" role="warn">
            <assert id="self-uri-assert-2" test="true">
                &lt;<name/> content-type="<value-of select="@content-type"/>"&gt; is ignored.
            </assert>
        </rule>
        <rule context="self-uri[not(starts-with(@xlink:href, 'http://') or starts-with(@xlink:href, 'https://') or (ancestor-or-self::*[starts-with(@xml:base, 'http://')]) or (ancestor-or-self::*[starts-with(@xml:base, 'https://')]))]" role="warn">
            <assert id="self-uri-assert-3" test="true">
                &lt;<name/>&gt; without an absolute HTTP @xlink:href is ignored.
            </assert>
        </rule>
        <rule context="self-uri">
            <let name="content-type" value="@content-type"/>
            <assert id="self-uri-assert-4" test="count(preceding-sibling::self-uri[@content-type=$content-type])=0" role="warn">
                Extra &lt;<name/> content-type="<value-of select="$content-type"/>"&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="self-uri_content">
        <rule context="self-uri[child::node()]" role="warn">
            <assert id="self-uri_content-assert-1" test="true">
                Content inside &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="self-uri_parent">
        <rule context="self-uri[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="self-uri_parent-assert-1" test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="source">
        <rule context="source">
            <assert id="source-assert-1" test="count(preceding-sibling::source)=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="source_parent">
        <rule context="source[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="source_parent-assert-1" test="
                $parent='element-citation'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="sub_parent">
        <rule context="sub[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="sub_parent-assert-1" test="
                $parent!='element-citation'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="subj-group">
        <rule context="subj-group[not(@subj-group-type)]">
            <assert id="subj-group-assert-1" test="true" role="warn">
                &lt;<name/>&gt; without a @subj-group-type is ignored.
            </assert>
        </rule>
        <rule context="subj-group">
            <assert id="subj-group-assert-2" test="
                @subj-group-type='display-channel'
                or @subj-group-type='heading'
            " role="warn">
                &lt;<name/> subj-group-type="<value-of select="@subj-group-type"/>"&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="subj-group_parent">
        <rule context="subj-group[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="subj-group_parent-assert-1" test="$parent='article-categories'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="subj-group_subject">
        <rule context="subj-group">
            <assert id="subj-group_subject-assert-1" test="subject" role="warn">
                &lt;<name/>&gt; without any &lt;subject&gt; is ignored.
            </assert>
        </rule>
        <rule context="subj-group[@subj-group-type='display-channel']/subject">
            <assert id="subj-group_subject-assert-2" test="count(preceding-sibling::subject)=0" role="warn">
                Extra &lt;<name/>&gt; in &lt;<value-of select="name(..)"/> subj-group-type="<value-of select="../@subj-group-type"/>"&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="suffix_parent">
        <rule context="suffix[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="suffix_parent-assert-1" test="$parent='name'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="sup_parent">
        <rule context="sup[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="sup_parent-assert-1" test="$parent!='element-citation'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="surname_given-only">
        <rule context="surname[parent::name[@name-style='given-only']]">
            <let name="parent" value="name(..)"/>
            <assert id="surname_given-only-assert-1" test="true" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/> name-style="given-only"&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="surname_parent">
        <rule context="surname[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="surname_parent-assert-1" test="$parent='name'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="title_parent">
        <rule context="title[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="title_parent-assert-1" test="
                $parent='caption'
                or $parent='kwd-group'
                or $parent='ref-list'
                or $parent='sec'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="title-group_parent">
        <rule context="title-group[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="title-group_parent-assert-1" test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="xlink-href_parent">
        <rule context="@xlink:href[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="xlink-href_parent-assert-1" test="
                $parent='ext-link'
                or $parent='graphic'
                or $parent='self-uri'
            " role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="year">
        <rule context="year">
            <assert id="year-assert-1" test="number(.)=." role="warn">
                &lt;<name/>&gt;<value-of select="."/>&lt;/<name/>&gt; is ignored.
            </assert>
            <assert id="year-assert-2" test="count(preceding-sibling::year[number(.)=.])=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="year_parent">
        <rule context="year[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert id="year_parent-assert-1" test="$parent='pub-date'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="article-id-logic">
        <rule context="article-meta">
            <report id="article-id-logic-report-1" test="article-id[@pub-id-type='publisher-id']" role="info">
                &lt;article-id&gt; <value-of select="article-id[@pub-id-type='publisher-id']"/> is used as article-id.
            </report>
            <report id="article-id-logic-report-2" test="not(article-id[@pub-id-type='publisher-id']) and article-id[not(@pub-id-type='pmid') and not(@pub-id-type='pmc') and not(@pub-id-type='doi')]" role="info">
                &lt;article-id&gt; <value-of select="article-id[not(@pub-id-type='pmid') and not(@pub-id-type='pmc') and not(@pub-id-type='doi')]"/> is used as article-id.
            </report>
            <report id="article-id-logic-report-3" test="not(article-id[@pub-id-type='publisher-id']) and not(article-id[not(@pub-id-type='pmid') and not(@pub-id-type='pmc') and not(@pub-id-type='doi')]) and elocation-id" role="info">
                &lt;elocation-id&gt; <value-of select="elocation-id"/> is used as article-id.
            </report>
            <report id="article-id-logic-report-4" test="not(article-id[@pub-id-type='publisher-id']) and not(article-id[not(@pub-id-type='pmid') and not(@pub-id-type='pmc') and not(@pub-id-type='doi')]) and not(elocation-id) and article-id[@pub-id-type='doi']" role="info">
                &lt;article-id&gt; <value-of select="article-id[@pub-id-type='doi']"/> is used as article-id.
            </report>
            <report id="article-id-logic-report-5" test="not(article-id[@pub-id-type='publisher-id']) and not(article-id[not(@pub-id-type='pmid') and not(@pub-id-type='pmc') and not(@pub-id-type='doi')]) and not(elocation-id) and not(article-id[@pub-id-type='doi'])" role="error">
                no article-id. Article cannot be ingested.
            </report>
        </rule>
    </pattern>

</schema>