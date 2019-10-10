<?xml version="1.0" encoding="UTF-8"?>

<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">

    <ns uri="http://www.w3.org/1999/xlink" prefix="xlink"/>
    <ns uri="http://www.w3.org/1998/Math/MathML" prefix="mml"/>
    <!-- ali namespace not included as http://www.niso.org/schemas/ali/1.0/ and http://www.niso.org/schemas/ali/1.0 are used
         local-name() will have to be used (in place of name()) in tests for those elements
    -->
    
    <pattern id="attribute-whitelist">
        <rule context="@*">
            <assert id="attribute-whitelist-assert-1" test="
                name()='accent'
                or name()='accentunder'
                or name()='actiontype'
                or name()='align'
                or name()='article-type'
                or name()='bevelled'
                or name()='class'
                or name()='close'
                or name()='columnalign'
                or name()='columnlines'
                or name()='columnspacing'
                or name()='columnspan'
                or name()='content-type'
                or name()='contrib-type'
                or name()='date-type'
                or name()='definitionURL'
                or name()='denomalign'
                or name()='depth'
                or name()='displaystyle'
                or name()='display'
                or name()='encoding'
                or name()='equalcolumns'
                or name()='equalrows'
                or name()='fence'
                or name()='fontfamily'
                or name()='fontsize'
                or name()='fontstyle'
                or name()='fontweight'
                or name()='form'
                or name()='frame'
                or name()='groupalign'
                or name()='height'
                or name()='indentalign'
                or name()='indenttarget'
                or name()='iso-8601-date'
                or name()='kwd-group-type'
                or name()='largeop'
                or name()='linebreak'
                or name()='linebreakstyle'
                or name()='linethickness'
                or name()='lspace'
                or name()='mathbackground'
                or name()='mathcolor'
                or name()='mathsize'
                or name()='mathvariant'
                or name()='maxsize'
                or name()='mime-subtype'
                or name()='mimetype'
                or name()='minsize'
                or name()='movablelimits'
                or name()='name-style'
                or name()='notation'
                or name()='numalign'
                or name()='open'
                or name()='person-group-type'
                or name()='pub-id-type'
                or name()='rowalign'
                or name()='rowlines'
                or name()='rowspacing'
                or name()='rowspan'
                or name()='rspace'
                or name()='scriptlevel'
                or name()='separator'
                or name()='separators'
                or name()='stretchy'
                or name()='style'
                or name()='subj-group-type'
                or name()='subscriptshift'
                or name()='superscriptshift'
                or name()='symmetric'
                or name()='width'
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
                or name()='article-id'
                or name()='article-meta'
                or name()='article-title'
                or name()='back'
                or name()='body'
                or name()='bold'
                or name()='caption'
                or name()='contrib'
                or name()='contrib-group'
                or name()='day'
                or name()='disp-formula'
                or name()='element-citation'
                or name()='ext-link'
                or name()='fig'
                or name()='front'
                or name()='given-names'
                or name()='graphic'
                or name()='italic'
                or name()='inline-formula'
                or name()='kwd'
                or name()='kwd-group'
                or name()='label'
                or name()='mml:math'
                or name()='mml:mrow'
                or name()='mml:msub'
                or name()='mml:mi'
                or name()='mml:mtext'
                or name()='mml:mo'
                or name()='mml:mspace'
                or name()='mml:mfenced'
                or name()='mml:mn'
                or name()='mml:msubsup'
                or name()='mml:mfrac'
                or name()='mml:mtable'
                or name()='mml:mtr'
                or name()='mml:mtd'
                or name()='mml:msup'
                or name()='mml:msqrt'
                or name()='mml:mover'
                or name()='mml:munderover'
                or name()='mml:mstyle'
                or name()='mml:mpadded'
                or name()='mml:munder'
                or name()='mml:maligngroup'
                or name()='mml:mmultiscripts'
                or name()='mml:mprescripts'
                or name()='mml:none'
                or name()='mml:mphantom'
                or name()='mml:ms'
                or name()='mml:semantics'
                or name()='mml:annotation'
                or name()='mml:mroot'
                or name()='mml:mlabeledtr'
                or name()='mml:malignmark'
                or name()='mml:menclose'
                or name()='mml:merror'
                or name()='mml:apply'
                or name()='mml:abs'
                or name()='mml:csymbol'
                or name()='mml:maction'
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
                or name()='tex-math'
                or name()='title'
                or name()='title-group'
                or name()='year'
            " role="warn">
                &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="aff_parent">
        <rule context="aff">
            <let name="parent" value="name(..)"/>
            <assert id="aff_parent-assert-1" test="$parent='contrib'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="alt-text">
        <rule context="alt-text">
            <let name="parent" value="name(..)"/>
            <assert id="alt-text-assert-1" test="count(preceding-sibling::alt-text)=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
            <assert id="alt-text-assert-2" test="$parent='graphic'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-type">
        <rule context="@article-type">
            <let name="parent" value="name(..)"/>
            <assert id="article-type-assert-1" test="
                current()='research-article'
            " role="warn">
                @<name/>="<value-of select="current()"/>" is ignored.
            </assert>
            <assert id="article-type-assert-2" test="count(parent::article[front/article-meta/article-categories/subj-group[@subj-group-type='display-channel']/subject])=0" role="warn">
                @<name/> is ignored if there is a &lt;subj-group subj-group-type="display-channel"&gt;.
            </assert>
            <assert id="article-type-assert-3" test="$parent='article'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-categories_parent">
        <rule context="article-categories">
            <let name="parent" value="name(..)"/>
            <assert id="article-categories_parent-assert-1" test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="article-id">
        <rule context="article-id">
            <let name="parent" value="name(..)"/>
            <assert id="article-id-assert-1" test="$parent='article-meta'" role="warn">
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

    <pattern id="article-meta_title-group">
        <rule context="article-meta" role="error">
            <assert id="article-meta_title-group-assert-1" test="title-group">
                &lt;<name/>&gt; requires a &lt;title-group&gt;.
            </assert>
        </rule>
    </pattern>

    <pattern id="article-title">
        <rule context="article-title">
            <let name="parent" value="name(..)"/>
            <assert id="article-title-assert-1" test="count(preceding-sibling::article-title)=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
            <assert id="article-title-assert-2" test="
                $parent='element-citation'
                or $parent='title-group'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="back_parent">
        <rule context="back">
            <let name="parent" value="name(..)"/>
            <assert id="back_parent-assert-1" test="
                $parent='article'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="body_parent">
        <rule context="body">
            <let name="parent" value="name(..)"/>
            <assert id="body_parent-assert-1" test="
                $parent='article'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="bold_parent">
        <rule context="bold">
            <let name="parent" value="name(..)"/>
            <assert id="bold_parent-assert-1" test="
                $parent!='element-citation'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="caption_parent">
        <rule context="caption">
            <let name="parent" value="name(..)"/>
            <assert id="caption_parent-assert-1" test="
                $parent='fig'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="content-type_parent">
        <rule context="@content-type">
            <let name="parent" value="name(..)"/>
            <assert id="content-type-assert-1" test="
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
        <rule context="contrib">
            <let name="parent" value="name(..)"/>
            <assert id="contrib_parent-assert-1" test="$parent='contrib-group'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="contrib-group">
        <rule context="contrib-group">
            <let name="parent" value="name(..)"/>
            <assert id="contrib-group-assert-1" test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
            <assert id="contrib-group-assert-2" test="contrib" role="warn">
                &lt;<name/>&gt; without &lt;contrib&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="date-type_parent">
        <rule context="@date-type">
            <let name="parent" value="name(..)"/>
            <assert id="date-type_parent-assert-1" test="$parent='pub-date'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="day">
        <rule context="day">
            <let name="parent" value="name(..)"/>
            <assert id="day-assert-1" test="number(.)=." role="warn">
                &lt;<name/>&gt;<value-of select="."/>&lt;/<name/>&gt; is ignored.
            </assert>
            <assert id="day-assert-2" test="count(preceding-sibling::day[number(.)=.])=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
            <assert id="day-assert-3" test="$parent='pub-date'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="disp-formula_child">
        <rule context="disp-formula/*">
            <assert id="disp-formula_child-assert-1" test="name()='alternatives' or name()='mml:math' or name()='tex-math' or name()='label'" role="warn">
                &lt;<name/>&gt; in &lt;disp-formula&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="disp-formula_parent">
        <rule context="disp-formula">
            <let name="parent" value="name(..)"/>
            <assert id="disp-formula_parent-assert-1" test="$parent='p' or $parent='body' or $parent='sec' or $parent='app' or $parent='disp-quote' or $parent='boxed-text'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="element-citation">
        <rule context="element-citation">
            <let name="parent" value="name(..)"/>
            <assert id="element-citation-assert-1" test="article-title" role="warn">
                &lt;<name/>&gt; without an &lt;article-title&gt; is ignored.
            </assert>
            <assert id="element-citation-assert-2" test="
                $parent='ref'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="ext-link">
        <rule context="ext-link" role="warn">
            <let name="parent" value="name(..)"/>
            <report id="ext-link-report-1" test="not(contains(@xlink:href, ':') or ancestor-or-self::*[contains(@xml:base, ':')])">
                &lt;<name/>&gt; without an absolute @xlink:href is ignored.
            </report>
            <assert id="ext-link-assert-1" test="
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
            <let name="parent" value="name(..)"/>
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
            <assert id="fig_parent-assert-1" test="
                $parent='body'
                or $parent='sec'
                " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="front_parent">
        <rule context="front">
            <let name="parent" value="name(..)"/>
            <assert id="front_parent-assert-1" test="$parent='article'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="given-names_parent">
        <rule context="given-names">
            <let name="parent" value="name(..)"/>
            <assert id="given-names-assert-1" test="$parent='name'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="graphic">
        <rule context="graphic" role="warn">
            <let name="parent" value="name(..)"/>
            <assert id="graphic-assert-2" test="(@mimetype='image' and @mime-subtype='jpeg') or ('.jpg'=translate(substring(@xlink:href, string-length(@xlink:href)-3), 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz')) or ('.jpeg'=translate(substring(@xlink:href, string-length(@xlink:href)-4), 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))">
                &lt;<name/>&gt; is ignored if it is not a JPEG.
            </assert>
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
        <rule context="@iso-8601-date">
            <let name="parent" value="name(..)"/>
            <assert id="iso-8601-date_parent-assert-1" test="$parent='pub-date'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="inline-formula_child">
        <rule context="inline-formula/*">
            <assert id="inline-formula_child-assert-1" test="name()='alternatives' or name()='mml:math' or name()='tex-math'" role="warn">
                &lt;<name/>&gt; in &lt;inline-formula&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="inline-formula_parent">
        <rule context="inline-formula">
            <let name="parent" value="name(..)"/>
            <assert id="inline-formula_parent-assert-1" test="$parent='p' or $parent='th' or $parent='td' or $parent='title' or $parent='subject'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="italic_parent">
        <rule context="italic">
            <let name="parent" value="name(..)"/>
            <assert id="italic_parent-assert-1" test="
                $parent!='element-citation'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="kwd_parent">
        <rule context="kwd">
            <let name="parent" value="name(..)"/>
            <assert id="kwd_parent-assert-1" test="$parent='kwd-group'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="kwd-group-2">
        <rule context="kwd-group">
            <let name="parent" value="name(..)"/>
            <assert id="kwd-group-assert-2" test="
                @kwd-group-type='author-keywords'
                or @kwd-group-type='research-organism'
                or child::title
            " role="warn">
                &lt;<name/>&gt; is ignored if there is no &lt;title&gt;.
            </assert>
            <assert id="kwd-group_kwd-assert-3" test="kwd" role="warn">
                &lt;<name/>&gt; without any &lt;kwd&gt; is ignored.
            </assert>
            <assert id="kwd-group-assert-4" test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="label_parent">
        <rule context="label">
            <let name="parent" value="name(..)"/>
            <assert id="label_parent-assert-1" test="$parent='fig' or $parent='disp-formula'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="mimetype_parent">
        <rule context="@mimetype">
            <let name="parent" value="name(..)"/>
            <assert id="mimetype_parent-assert-1" test="$parent='graphic'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="mime-subtype_parent">
        <rule context="@mime-subtype">
            <let name="parent" value="name(..)"/>
            <assert id="mime-subtype_parent-assert-1" test="$parent='graphic'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="mmlmath_descendants">
        <rule context="*[
            name()='mml:abs'
            or name()='mml:annotation'
            or name()='mml:apply'
            or name()='mml:csymbol'
            or name()='mml:maction'
            or name()='mml:maligngroup'
            or name()='mml:malignmark'
            or name()='mml:menclose'
            or name()='mml:merror'
            or name()='mml:mfenced'
            or name()='mml:mfrac'
            or name()='mml:mi'
            or name()='mml:mlabeledtr'
            or name()='mml:mmultiscripts'
            or name()='mml:mn'
            or name()='mml:mo'
            or name()='mml:mover'
            or name()='mml:mpadded'
            or name()='mml:mphantom'
            or name()='mml:mprescripts'
            or name()='mml:mroot'
            or name()='mml:mrow'
            or name()='mml:ms'
            or name()='mml:mspace'
            or name()='mml:msqrt'
            or name()='mml:mstyle'
            or name()='mml:msub'
            or name()='mml:msubsup'
            or name()='mml:msup'
            or name()='mml:mtable'
            or name()='mml:mtd'
            or name()='mml:mtext'
            or name()='mml:mtr'
            or name()='mml:munder'
            or name()='mml:munderover'
            or name()='mml:none'
            or name()='mml:semantics']">
            <assert id="mmlmath_descendants-assert-1" test="ancestor::mml:math" role="warn">
                &lt;<name/>&gt; outside of &lt;mml:math&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="mmlmath_parent">
        <rule context="mml:math">
            <let name="parent" value="name(..)"/>
            <assert id="mmlmath_parent-assert-1" test="$parent='disp-formula' or $parent='inline-formula'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored. &lt;<name/>&gt; must be a child of &lt;disp-formula&gt; or &lt;inline-formula&gt; to be rendered.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="mmlmath_attributes">
        <rule context="*/@*[
            name()='accent'
            or name()='accentunder'
            or name()='actiontype'
            or name()='align'
            or name()='bevelled'
            or name()='class'
            or name()='close'
            or name()='columnalign'
            or name()='columnlines'
            or name()='columnspacing'
            or name()='columnspan'
            or name()='definitionURL'
            or name()='denomalign'
            or name()='depth'
            or name()='displaystyle'
            or name()='encoding'
            or name()='equalcolumns'
            or name()='equalrows'
            or name()='fence'
            or name()='fontfamily'
            or name()='fontsize'
            or name()='fontstyle'
            or name()='fontweight'
            or name()='form'
            or name()='frame'
            or name()='groupalign'
            or name()='height'
            or name()='indentalign'
            or name()='indenttarget'
            or name()='largeop'
            or name()='linebreak'
            or name()='linebreakstyle'
            or name()='linethickness'
            or name()='lspace'
            or name()='mathbackground'
            or name()='mathcolor'
            or name()='mathsize'
            or name()='mathvariant'
            or name()='maxsize'
            or name()='minsize'
            or name()='movablelimits'
            or name()='notation'
            or name()='numalign'
            or name()='open'
            or name()='rowalign'
            or name()='rowlines'
            or name()='rowspacing'
            or name()='rowspan'
            or name()='rspace'
            or name()='scriptlevel'
            or name()='separator'
            or name()='separators'
            or name()='stretchy'
            or name()='style'
            or name()='subscriptshift'
            or name()='superscriptshift'
            or name()='symmetric'
            or name()='width']">
            <assert id="mmlmath_attributes-assert-1" test="parent::*/ancestor::mml:math" role="warn">
                @<name/> outside of &lt;mml:math&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="month">
        <rule context="month">
            <let name="parent" value="name(..)"/>
            <assert id="month-assert-1" test="number(.)=." role="warn">
                &lt;<name/>&gt;<value-of select="."/>&lt;/<name/>&gt; is ignored.
            </assert>
            <assert id="month-assert-2" test="count(preceding-sibling::month[number(.)=.])=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
            <assert id="month-assert-3" test="$parent='pub-date'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="name">
        <rule context="name">
            <let name="parent" value="name(..)"/>
            <report id="name-assert-1" test="not(parent::person-group/parent::element-citation) and count(preceding-sibling::name)!=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </report>
            <assert id="name-assert-2" test="
                $parent='contrib'
                or $parent='person-group'
                " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="name-style_parent">
        <rule context="@name-style">
            <let name="parent" value="name(..)"/>
            <assert id="name-style_parent-assert-1" test="$parent='name'" role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="p">
        <rule context="p">
            <let name="parent" value="name(..)"/>
            <assert id="p-assert-1" test="
                $parent='body'
                or $parent='caption'
                or $parent='sec'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="person-group-1">
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
        <rule context="person-group">
            <let name="parent" value="name(..)"/>
            <assert id="person-group-assert-3" test="
                $parent='element-citation'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="prefix_parent">
        <rule context="prefix">
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
        <rule context="pub-date">
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
        <rule context="pub-id">
            <let name="parent" value="name(..)"/>
            <assert id="pub-id_parent-assert-1" test="
                $parent='element-citation'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="pub-id-type_parent">
        <rule context="@pub-id-type">
            <let name="parent" value="name(..)"/>
            <assert id="pub-id-type_parent-assert-1" test="
                $parent='pub-id'
                or $parent='article-id'
            " role="warn">
                @<name/> on &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="ref-list_parent">
        <rule context="ref-list">
            <let name="parent" value="name(..)"/>
            <assert id="ref-list_parent-assert-1" test="
                $parent='back'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="sec_parent">
        <rule context="sec">
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
        <rule context="self-uri">
            <let name="content-type" value="@content-type"/>
            <assert id="self-uri-assert-3" test="count(preceding-sibling::self-uri[@content-type=$content-type])=0" role="warn">
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
        <rule context="self-uri">
            <let name="parent" value="name(..)"/>
            <assert id="self-uri_parent-assert-1" test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="source">
        <rule context="source">
            <let name="parent" value="name(..)"/>
            <assert id="source-assert-1" test="count(preceding-sibling::source)=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
            <assert id="source-assert-2" test="
                $parent='element-citation'
                " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="sub_parent">
        <rule context="sub">
            <let name="parent" value="name(..)"/>
            <assert id="sub_parent-assert-1" test="
                $parent!='element-citation'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="subj-group">
        <rule context="subj-group[@subj-group-type='heading']">
            <report id="subj-group-report-1" test="parent::article-categories and (count(preceding-sibling::subj-group[@subj-group-type='heading'])=0)" role="info">
                '<value-of select="subject[1]"/>' is treated as article type.
            </report>
        </rule>
        <rule context="subj-group[(@subj-group-type!='heading') or not(@subj-group-type)]">
            <report id="subj-group-report-2" test="parent::article-categories" role="info">
                '<value-of select="subject[1]"/>' is treated as a subject-category.
            </report>
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
        <rule context="subj-group/subject">
            <assert id="subj-group_subject-assert-2" test="count(preceding-sibling::subject)=0" role="warn">
                Extra &lt;<name/>&gt; in &lt;<value-of select="name(..)"/> subj-group-type="<value-of select="../@subj-group-type"/>"&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="suffix_parent">
        <rule context="suffix">
            <let name="parent" value="name(..)"/>
            <assert id="suffix_parent-assert-1" test="$parent='name'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="sup_parent">
        <rule context="sup">
            <let name="parent" value="name(..)"/>
            <assert id="sup_parent-assert-1" test="
                $parent!='element-citation'
            " role="warn">
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
        <rule context="surname">
            <let name="parent" value="name(..)"/>
            <assert id="surname_parent-assert-1" test="$parent='name'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="tex-math_parent">
        <rule context="tex-math">
            <let name="parent" value="name(..)"/>
            <assert id="tex-math_parent-assert-1" test="
                $parent='inline-formula'
                or $parent='disp-formula'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored. &lt;<name/>&gt; must be a child of &lt;disp-formula&gt; or &lt;inline-formula&gt; to be rendered.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="tex-math_child">
        <rule context="tex-math/*">
            <report id="tex-math_child-report-1" test="true()" role="warn">
                &lt;<name/>&gt; in &lt;tex-math&gt; is ignored.
            </report>
        </rule>
    </pattern>

    <pattern id="title_parent">
        <rule context="title">
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
        <rule context="title-group">
            <let name="parent" value="name(..)"/>
            <assert id="title-group_parent-assert-1" test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="xlink-href_parent">
        <rule context="@xlink:href">
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
            <let name="parent" value="name(..)"/>
            <assert id="year-assert-1" test="number(.)=." role="warn">
                &lt;<name/>&gt;<value-of select="."/>&lt;/<name/>&gt; is ignored.
            </assert>
            <assert id="year-assert-2" test="count(preceding-sibling::year[number(.)=.])=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
            <assert id="year-assert-3" test="$parent='pub-date' or $parent='element-citation'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
</schema>
