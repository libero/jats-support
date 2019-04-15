<?xml version="1.0" encoding="UTF-8"?>

<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">

    <ns prefix="xlink" uri="http://www.w3.org/1999/xlink"/>

    <pattern id="attribute-whitelist">
        <rule context="@*">
            <assert test="
                name()='article-type'
                or name()='date-type'
                or name()='iso-8601-date'
                or name()='kwd-group-type'
                or name()='mimetype'
                or name()='mime-subtype'
                or name()='subj-group-type'
                or name()='xlink:href'
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
                or name()='article-categories'
                or name()='article-meta'
                or name()='article-title'
                or name()='body'
                or name()='bold'
                or name()='day'
                or name()='fig'
                or name()='front'
                or name()='graphic'
                or name()='italic'
                or name()='kwd'
                or name()='kwd-group'
                or name()='month'
                or name()='p'
                or name()='pub-date'
                or name()='sec'
                or name()='sub'
                or name()='subj-group'
                or name()='subject'
                or name()='sup'
                or name()='title'
                or name()='title-group'
                or name()='year'
            " role="warn">
                &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-type">
        <rule context="@article-type">
            <assert test="
                current()='research-article'
            " role="warn">
                @<name/>="<value-of select="current()"/>" is ignored.
            </assert>
            <assert test="count(parent::article[front/article-meta/article-categories/subj-group[@subj-group-type='display-channel']/subject])=0" role="warn">
                @<name/> is ignored if there is a &lt;subj-group subj-group-type="display-channel"&gt;.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-type_parent">
        <rule context="@article-type[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='article'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-categories_parent">
        <rule context="article-categories[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
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

    <pattern id="date-type_parent">
        <rule context="@date-type[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='pub-date'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="day">
        <rule context="day">
            <assert test="number(.)=." role="warn">
                &lt;<name/>&gt;<value-of select="."/>&lt;/<name/>&gt; is ignored.
            </assert>
            <assert test="count(preceding-sibling::day[number(.)=.])=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="day_parent">
        <rule context="day[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='pub-date'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="fig">
        <rule context="fig">
            <assert test="graphic[(@mimetype='image' and @mime-subtype='jpeg') or ('.jpg'=substring(@xlink:href, string-length(@xlink:href)-3))]" role="warn">
                &lt;<name/>&gt; without a JPEG &lt;graphic&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="fig_parent">
        <rule context="fig[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="
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
            <assert test="$parent='article'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="graphic">
        <rule context="graphic[not(starts-with(@xlink:href, 'http://') or starts-with(@xlink:href, 'https://'))]" role="warn">
            <assert test="true">
                &lt;<name/>&gt; without an absolute HTTP @xlink:href is ignored.
            </assert>
        </rule>
        <rule context="graphic[not((@mimetype='image' and @mime-subtype='jpeg') or ('.jpg'=substring(@xlink:href, string-length(@xlink:href)-3)))]" role="warn">
            <assert test="true">
                &lt;<name/>&gt; is ignored if it is not a JPEG.
            </assert>
        </rule>
        <rule context="graphic">
            <assert test="count(preceding-sibling::graphic[(@mimetype='image' and @mime-subtype='jpeg') or ('.jpg'=substring(@xlink:href, string-length(@xlink:href)-3))])=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="graphic_parent">
        <rule context="graphic[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="
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
            <assert test="$parent='pub-date'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="kwd_parent">
        <rule context="kwd[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='kwd-group'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
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

    <pattern id="kwd-group_kwd">
        <rule context="kwd-group">
            <assert test="kwd" role="warn">
                &lt;<name/>&gt; without any &lt;kwd&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="kwd-group_parent">
        <rule context="kwd-group[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="mimetype_parent">
        <rule context="@mimetype[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='graphic'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="mime-subtype_parent">
        <rule context="@mime-subtype[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='graphic'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="month">
        <rule context="month">
            <assert test="number(.)=." role="warn">
                &lt;<name/>&gt;<value-of select="."/>&lt;/<name/>&gt; is ignored.
            </assert>
            <assert test="count(preceding-sibling::month[number(.)=.])=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="month_parent">
        <rule context="month[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='pub-date'" role="warn">
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

    <pattern id="pub-date">
        <rule context="pub-date[not(@date-type)]">
            <assert test="true" role="warn">
                &lt;<name/>&gt; without a @date-type is ignored.
            </assert>
        </rule>
        <rule context="pub-date[not(@date-type='pub')]">
            <assert test="true" role="warn">
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
            <assert test="year[number(.)=.] and month[number(.)=.] and day[number(.)=.]" role="warn">
                &lt;<name/> date-type="<value-of select="@date-type"/>"&gt; is ignored if there is no @iso-8601-date, nor numbers in &lt;year&gt;, &lt;month&gt; and &lt;day&gt;.
            </assert>
        </rule>
        <rule context="@iso-8601-date[parent::pub-date]">
            <assert test="
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
            <assert test="
                $parent='article-meta'
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
        <rule context="subj-group[@subj-group-type='display-channel']/subject">
            <assert test="count(preceding-sibling::subject)=0" role="warn">
                Extra &lt;<name/>&gt; in &lt;<value-of select="name(..)"/> subj-group-type="<value-of select="../@subj-group-type"/>"&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="title_parent">
        <rule context="title[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="
                $parent='kwd-group'
                or $parent='sec'
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

    <pattern id="xlink:href_parent">
        <rule context="@xlink:href[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='graphic'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="year">
        <rule context="year">
            <assert test="number(.)=." role="warn">
                &lt;<name/>&gt;<value-of select="."/>&lt;/<name/>&gt; is ignored.
            </assert>
            <assert test="count(preceding-sibling::year[number(.)=.])=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="year_parent">
        <rule context="year[parent::*]">
            <let name="parent" value="name(..)"/>
            <assert test="$parent='pub-date'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

</schema>
