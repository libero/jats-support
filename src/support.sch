<?xml version="1.0" encoding="UTF-8"?>

<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">

    <ns uri="http://www.w3.org/1999/xlink" prefix="xlink"/>
    <ns uri="http://www.w3.org/1998/Math/MathML" prefix="mml"/>
    <!-- ali namespace not included as both http://www.niso.org/schemas/ali/1.0/ and http://www.niso.org/schemas/ali/1.0 are used (due to error in JATS 1.1d3). -->
    
    <pattern id="attribute-whitelist">
        <rule context="*[@*]">
            <report id="attribute-whitelist-assert-1" test="@*[name()!='abstract-type'
                and name()!='accent'
                and name()!='accentunder'
                and name()!='actiontype'
                and name()!='align'
                and name()!='article-type'
                and name()!='authenticated'
                and name()!='bevelled'
                and name()!='class'
                and name()!='close'
                and name()!='colspan'
                and name()!='columnalign'
                and name()!='columnlines'
                and name()!='columnspacing'
                and name()!='columnspan'
                and name()!='content-type'
                and name()!='contrib-id-type'
                and name()!='contrib-type'
                and name()!='corresp'
                and name()!='date-type'
                and name()!='definitionURL'
                and name()!='denomalign'
                and name()!='depth'
                and name()!='displaystyle'
                and name()!='display'
                and name()!='encoding'
                and name()!='equalcolumns'
                and name()!='equalrows'
                and name()!='ext-link-type'
                and name()!='fence'
                and name()!='fontfamily'
                and name()!='fontsize'
                and name()!='fontstyle'
                and name()!='fontweight'
                and name()!='fandm'
                and name()!='fn-type'
                and name()!='frame'
                and name()!='groupalign'
                and name()!='height'
                and name()!='id'
                and name()!='indentalign'
                and name()!='indenttarget'
                and name()!='institution-id-type'
                and name()!='iso-8601-date'
                and name()!='kwd-group-type'
                and name()!='largeop'
                and name()!='linebreak'
                and name()!='linebreakstyle'
                and name()!='linethickness'
                and name()!='list-type'
                and name()!='lspace'
                and name()!='mathbackground'
                and name()!='mathcoland'
                and name()!='mathsize'
                and name()!='mathvariant'
                and name()!='maxsize'
                and name()!='mime-subtype'
                and name()!='mimetype'
                and name()!='minsize'
                and name()!='movablelimits'
                and name()!='name-style'
                and name()!='notation'
                and name()!='numalign'
                and name()!='open'
                and name()!='orientation'
                and name()!='person-group-type'
                and name()!='position'
                and name()!='pub-id-type'
                and name()!='publication-type'
                and name()!='ref-type'
                and name()!='rid'
                and name()!='rowalign'
                and name()!='rowlines'
                and name()!='rowspacing'
                and name()!='rowspan'
                and name()!='rspace'
                and name()!='scriptlevel'
                and name()!='sec-type'
                and name()!='separatand'
                and name()!='separatands'
                and name()!='stretchy'
                and name()!='style'
                and name()!='subj-group-type'
                and name()!='subscriptshift'
                and name()!='superscriptshift'
                and name()!='symmetric'
                and name()!='toggle'
                and name()!='valign'
                and name()!='width'
                and name()!='xlink:href'
                and name()!='xml:base'
                and name()!='xml:lang'
                and name()!='xml:space']" role="warn">
                @<value-of select="name(@*[name()!='abstract-type'
                    and name()!='accent'
                    and name()!='accentunder'
                    and name()!='actiontype'
                    and name()!='align'
                    and name()!='article-type'
                    and name()!='authenticated'
                    and name()!='bevelled'
                    and name()!='class'
                    and name()!='close'
                    and name()!='colspan'
                    and name()!='columnalign'
                    and name()!='columnlines'
                    and name()!='columnspacing'
                    and name()!='columnspan'
                    and name()!='content-type'
                    and name()!='contrib-id-type'
                    and name()!='contrib-type'
                    and name()!='corresp'
                    and name()!='date-type'
                    and name()!='definitionURL'
                    and name()!='denomalign'
                    and name()!='depth'
                    and name()!='displaystyle'
                    and name()!='display'
                    and name()!='encoding'
                    and name()!='equalcolumns'
                    and name()!='equalrows'
                    and name()!='ext-link-type'
                    and name()!='fence'
                    and name()!='fontfamily'
                    and name()!='fontsize'
                    and name()!='fontstyle'
                    and name()!='fontweight'
                    and name()!='fandm'
                    and name()!='fn-type'
                    and name()!='frame'
                    and name()!='groupalign'
                    and name()!='height'
                    and name()!='id'
                    and name()!='indentalign'
                    and name()!='indenttarget'
                    and name()!='institution-id-type'
                    and name()!='iso-8601-date'
                    and name()!='kwd-group-type'
                    and name()!='largeop'
                    and name()!='linebreak'
                    and name()!='linebreakstyle'
                    and name()!='linethickness'
                    and name()!='list-type'
                    and name()!='lspace'
                    and name()!='mathbackground'
                    and name()!='mathcoland'
                    and name()!='mathsize'
                    and name()!='mathvariant'
                    and name()!='maxsize'
                    and name()!='mime-subtype'
                    and name()!='mimetype'
                    and name()!='minsize'
                    and name()!='movablelimits'
                    and name()!='name-style'
                    and name()!='notation'
                    and name()!='numalign'
                    and name()!='open'
                    and name()!='orientation'
                    and name()!='person-group-type'
                    and name()!='position'
                    and name()!='pub-id-type'
                    and name()!='publication-type'
                    and name()!='ref-type'
                    and name()!='rid'
                    and name()!='rowalign'
                    and name()!='rowlines'
                    and name()!='rowspacing'
                    and name()!='rowspan'
                    and name()!='rspace'
                    and name()!='scriptlevel'
                    and name()!='sec-type'
                    and name()!='separatand'
                    and name()!='separatands'
                    and name()!='stretchy'
                    and name()!='style'
                    and name()!='subj-group-type'
                    and name()!='subscriptshift'
                    and name()!='superscriptshift'
                    and name()!='symmetric'
                    and name()!='toggle'
                    and name()!='valign'
                    and name()!='width'
                    and name()!='xlink:href'
                    and name()!='xml:base'
                    and name()!='xml:lang'
                    and name()!='xml:space'])"/> is ignored.
            </report>
        </rule>
    </pattern>

    <pattern id="element-whitelist">
        <rule context="*">
            <assert id="element-whitelist-assert-1" test="
                name()='abstract'
                or name()='ack'
                or name()='addr-line'
                or name()='aff'
                or name()='alt-text'
                or name()='article'
                or name()='article-categories'
                or name()='article-id'
                or name()='article-meta'
                or name()='article-title'
                or name()='app'
                or name()='app-group'
                or name()='attrib'
                or name()='author-notes'
                or name()='award-group'
                or name()='award-id'
                or name()='back'
                or name()='body'
                or name()='bold'
                or name()='break'
                or name()='caption'
                or name()='chapter-title'
                or name()='code'
                or name()='collab'
                or name()='comment'
                or name()='conf-date'
                or name()='conf-loc'
                or name()='conf-name'
                or name()='contrib'
                or name()='contrib-id'
                or name()='contrib-group'
                or name()='copyright-statement'
                or name()='country'
                or name()='date-in-citation'
                or name()='day'
                or name()='def'
                or name()='def-head'
                or name()='def-item'
                or name()='def-list'
                or name()='def-term'
                or name()='disp-formula'
                or name()='disp-quote'
                or name()='edition'
                or name()='element-citation'
                or name()='elocation-id'
                or name()='email'
                or name()='etal'
                or name()='ext-link'
                or name()='fig'
                or name()='fn'
                or name()='fn-group'
                or name()='fpage'
                or name()='front'
                or name()='funding-group'
                or name()='funding-source'
                or name()='given-names'
                or name()='gov'
                or name()='graphic'
                or name()='institution'
                or name()='institution-id'
                or name()='institution-wrap'
                or name()='issue'
                or name()='italic'
                or name()='inline-formula'
                or name()='kwd'
                or name()='kwd-group'
                or name()='label'
                or name()='license'
                or name()='license-p'
                or name()='list'
                or name()='list-item'
                or name()='lpage'
                or name()='media'
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
                or name()='monospace'
                or name()='month'
                or name()='name'
                or name()='named-content'
                or name()='p'
                or name()='permissions'
                or name()='person-group'
                or name()='prefix'
                or name()='pub-date'
                or name()='pub-id'
                or name()='publisher-loc'
                or name()='publisher-name'
                or name()='ref'
                or name()='ref-list'
                or name()='sc'
                or name()='season'
                or name()='sec'
                or name()='self-uri'
                or name()='source'
                or name()='sub'
                or name()='subj-group'
                or name()='subject'
                or name()='suffix'
                or name()='sup'
                or name()='supplementary-material'
                or name()='surname'
                or name()='table'
                or name()='table-wrap'
                or name()='table-wrap-foot'
                or name()='tbody'
                or name()='td'
                or name()='term'
                or name()='term-head'
                or name()='tex-math'
                or name()='th'
                or name()='thead'
                or name()='title'
                or name()='title-group'
                or name()='tr'
                or name()='underline'
                or name()='volume'
                or name()='xref'
                or name()='year'
            " role="warn">
                &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="abstract_parent">
        <rule context="abstract">
            <let name="parent" value="name(..)"/>
            <assert id="abstract_parent-assert-1" test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
            <report id="abstract_parent-report-1" test="($parent='article-meta') and (@abstract-type!='summary'
                and @abstract-type!='ASCII'
                and @abstract-type!='author'
                and @abstract-type!='editor'
                and @abstract-type!='key-points'
                and @abstract-type!='objectives'
                and @abstract-type!='section'
                and @abstract-type!='toc'
                and @abstract-type!='impact-statement'
                and @abstract-type!='short'
                and @abstract-type!='teaser'
                and @abstract-type!='web-summary')" role="warn">
                &lt;<name/> abstract-type="<value-of select="@abstract-type"/>"&gt; is ignored.
            </report>
            <report id="abstract_parent-report-2" test="($parent='article-meta') and (@abstract-type='toc'
                or @abstract-type='impact-statement'
                or @abstract-type='short'
                or @abstract-type='teaser'
                or @abstract-type='web-summary')" role="info">
                &lt;<name/> abstract-type="<value-of select="@abstract-type"/>"&gt; is treated as an impact statement.
            </report>
        </rule>
    </pattern>
    
    <pattern id="ack_parent">
        <rule context="ack">
            <let name="parent" value="name(..)"/>
            <assert id="ack_parent-assert-1" test="$parent='back'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="addr-line_parent">
        <rule context="addr-line">
            <let name="parent" value="name(..)"/>
            <assert id="addr-line_parent-assert-1" test="$parent='aff'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="aff_parent">
        <rule context="aff">
            <let name="parent" value="name(..)"/>
            <assert id="aff_parent-assert-1" test="
                parent::contrib[@contrib-type='author']
                or $parent='contrib-group'" role="warn">
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
        <rule context="*[@article-type]">
            <assert id="article-type-assert-1" test="count(front/article-meta/article-categories/subj-group[@subj-group-type='heading']/subject)=0" role="warn">
                @article-type is ignored if there is a &lt;subj-group subj-group-type="heading"&gt;.
            </assert>
            <assert id="article-type-assert-2" test="name()='article'" role="warn">
                @article-type on &lt;<value-of select="name()"/>&gt; is ignored.
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
    
    <pattern id="article-id-doi">
        <rule context="article-meta/article-id[@pub-id-type='doi']">
            <assert id="article-id-doi-assert-1" test="starts-with(.,'10.')" role="warn">
                &lt;<name/> pub-id-type='doi'&gt; which doesn't begin with '10.' is ignored.
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
            <report id="article-id-logic-report-4" test="not(article-id[@pub-id-type='publisher-id']) and not(article-id[not(@pub-id-type='pmid') and not(@pub-id-type='pmc') and not(@pub-id-type='doi')]) and not(elocation-id) and article-id[(@pub-id-type='doi') and starts-with(.,'10.')]" role="info">
                &lt;article-id&gt; <value-of select="article-id[@pub-id-type='doi']"/> is used as article-id.
            </report>
            <report id="article-id-logic-report-5" test="not(article-id[@pub-id-type='publisher-id']) and not(article-id[not(@pub-id-type='pmid') and not(@pub-id-type='pmc') and not(@pub-id-type='doi')]) and not(elocation-id) and not(article-id[(@pub-id-type='doi') and starts-with(.,'10.')])" role="error">
                no article-id. Article cannot be ingested.
            </report>
        </rule>
    </pattern>

    <pattern id="article-meta_title-group">
        <rule context="article-meta">
            <assert id="article-meta_title-group-assert-1" test="title-group" role="error">
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
    
    <pattern id="article-title_child">
        <rule context="article-title/*">
            <assert test="name()='sub'
                or name()='sup'
                or name()='italic'
                or name()='sc'" 
                id="article-title_child-assert-1" 
                role="warn">Extra &lt;<name/>&gt; is ignored.</assert>
        </rule>
    </pattern>
    

    <pattern id="app-group_child">
        <rule context="app-group/*">
            <assert id="app-group_child-assert-1" test="name()='app'" role="warn">
                &lt;<name/>&gt; in &lt;app-group&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="attrib_parent">
        <rule context="attrib">
            <let name="parent" value="name(..)"/>
            <assert id="attrib_parent-assert-1" test="$parent='disp-quote'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="author-notes_parent">
        <rule context="author-notes">
            <let name="parent" value="name(..)"/>
            <assert id="author-notes-assert-1" test="
                $parent='article-meta'
                " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="award-id_parent">
        <rule context="award-id">
            <let name="parent" value="name(..)"/>
            <assert id="award-id-assert-1" test="$parent='award-group'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
            <report id="award-id-report-1" test="($parent='award-group') and preceding-sibling::award-id" role="warn">
                Extra &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </report>
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
    
    <pattern id="back-sec_child">
        <rule context="back/sec/*">
            <assert test="name()='title' or name()='p' or name()='supplementary-material'" 
                id="back-sec_child-assert-1" 
                role="warn">&lt;<name/>&gt; in back/sec is ignored.</assert>
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
    
    <pattern id="break_parent">
        <rule context="break">
            <let name="parent" value="name(..)"/>
            <assert id="break_parent-assert-1" test="
                $parent='td'
                or $parent='th'
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
                or $parent='table-wrap'
                or $parent='supplementary-material'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
            <assert id="caption_parent-assert-2" test="count(preceding-sibling::caption)=0" role="warn">
                Extra &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="code_child">
        <rule context="code/*">
            <report id="code_child-report-1" test="true()" role="warn">
                &lt;<name/>&gt; in &lt;code&gt; is rendered as text (not parsed).
            </report>
        </rule>
    </pattern>
    
    <pattern id="code_parent">
        <rule context="code">
            <let name="parent" value="name(..)"/>
            <assert id="code_parent-assert-1" test="
                $parent='app'
                or $parent='sec'
                or $parent='p'
                " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="content-type_parent">
        <rule context="*[@content-type]">
            <assert id="content-type-assert-1" test="
                name()='institution'
                or name()='named-content'
                or name()='self-uri'
            " role="warn">
                @content-type on &lt;<value-of select="name()"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="contrib">
        <rule context="contrib[not(@contrib-type)]">
            <assert id="contrib-assert-1" test="true()" role="warn">
                &lt;<name/>&gt; without a @contrib-type is ignored.
            </assert>
        </rule>
        <rule context="contrib[not(@contrib-type='author')]">
            <assert id="contrib-assert-2" test="true()" role="warn">
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
    
    <pattern id="contrib-id">
        <rule context="contrib-id">
            <let name="parent" value="name(..)"/>
            <assert id="contrib-id-assert-1" test="$parent='contrib'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
            <assert id="contrib-id-assert-2" test="@contrib-id-type='orcid'" role="warn">
                &lt;<name/>&gt; without @contrib-id-type='orcid' is ignored.
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
            <assert id="contrib-group-assert-3" test="count(preceding-sibling::contrib-group)=0" role="warn">
                Extra &lt;<name/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="corresp-att_parent">
        <rule context="*[@corresp]">
            <report id="corresp-att-assert-1" 
                test="(@corresp='yes') and (name()='contrib') and not(@contrib-type='author')" 
                role="warn">
                @corresp on &lt;<value-of select="name()"/>&gt; without contrib-type="author" is ignored.
            </report>
        </rule>
    </pattern>
    
    <pattern id="country_parent">
        <rule context="country">
            <let name="parent" value="name(..)"/>
            <assert id="country_parent-assert-1" test="$parent='aff'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="date-type_parent">
        <rule context="*[@date-type]">
            <assert id="date-type_parent-assert-1" test="name()='pub-date'" role="warn">
                @date-type on &lt;<value-of select="name()"/>&gt; is ignored.
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
    
    <pattern id="def_parent">
        <rule context="def">
            <let name="parent" value="name(..)"/>
            <assert id="def_parent-assert-1" test="$parent='def-item'
                " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="def-list_parent">
        <rule context="def-list">
            <let name="parent" value="name(..)"/>
            <assert id="def-list_parent-assert-1" test="$parent='sec'
                or $parent='body'
                or $parent='app'
                or $parent='boxed-text'
                or $parent='glossary'
                or $parent='p'
                " role="warn">
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
            <report id="disp-formula_ancestor-report-1" test="ancestor::ack" role="warn">
                &lt;<name/>&gt; in &lt;ack&gt; is ignored.
            </report>
        </rule>
    </pattern>
    
    <pattern id="disp-quote_parent">
        <rule context="disp-quote">
            <let name="parent" value="name(..)"/>
            <assert id="disp-quote_parent-assert-1" test="$parent='body' or $parent='sec' or $parent='app'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="element-citation">
        <rule context="element-citation">
            <let name="parent" value="name(..)"/>
            <assert id="element-citation-assert-1" test="@publication-type" role="warn">
                &lt;<name/>&gt; without @publication-type is ignored.
            </assert>
            <assert id="element-citation-assert-2" test="@publication-type='journal'
                or @publication-type='book'
                or @publication-type='report'
                or @publication-type='confproc'
                or @publication-type='thesis'
                or @publication-type='web'
                or @publication-type='data'
                or @publication-type='software'
                or @publication-type='preprint'" role="warn">
                &lt;<name/>&gt; with @publication-type="<value-of select="@publication-type"/>" is ignored. Only the following values are supported - journal, book, report, confproc, thesis, web, data, software, preprint.
            </assert>
            
            <assert id="element-citation-assert-3" test="$parent='ref'" 
                role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="element-citation-journal">
        <rule context="element-citation[@publication-type='journal']">
            <let name="fpage-count" value="count(fpage)"/>
            <let name="lpage-count" value="count(lpage)"/>
            <let name="page-range-count" value="count(page-range)"/>
            <let name="elocation-id-count" value="count(elocation-id)"/>
            <let name="source-count" value="count(source)"/>
            
            <assert test="article-title" 
                id="element-citation-journal-assert-1" 
                role="warn">
                <name/>[@publication-type='<value-of select="@publication-type"/>'] without &lt;article-title&gt; is ignored.</assert>
            
            <report test="($source-count=1) and (fpage or lpage) and page-range" 
                id="element-citation-journal-report-1" 
                role="warn">
                Extra &lt;page-range&gt; in element-citation[@publication-type="journal"] is ignored, when &lt;fpage&gt; or &lt;lpage&gt; is present and there is 1 &lt;source&gt;.</report>
            
            <report test="($source-count=1) and (fpage or lpage) and elocation-id" 
                id="element-citation-journal-report-2" 
                role="warn">
                Extra &lt;elocation-id&gt; in element-citation[@publication-type="journal"] is ignored, when &lt;fpage&gt; or &lt;lpage&gt; is present and there is 1 &lt;source&gt;.</report>
            
            <report test="($source-count=1) and page-range and elocation-id" 
                id="element-citation-journal-report-3" 
                role="warn">
                Extra &lt;elocation-id&gt; in element-citation[@publication-type="journal"] is ignored, when &lt;page-range&gt; is present and there is 1 &lt;source&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='journal']/*">
            
            <assert test="name()='person-group'
                or name()='year'
                or name()='article-title'
                or name()='source'
                or name()='volume'
                or name()='issue'
                or name()='fpage'
                or name()='lpage'
                or name()='page-range'
                or name()='elocation-id'
                or name()='pub-id'
                or name()='ext-link'
                or name()='comment'
                or name()='season'"
                id="element-citation-journal-assert-2"
                role="warn">&lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored.</assert>
        </rule>
    </pattern>
    
    <pattern id="element-citation-journal-children">
         <rule context="element-citation[@publication-type='journal']/person-group">
             
            <report test="not(@person-group-type='author') and not(@person-group-type='editor')" 
                id="element-citation-journal-child-report-1" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] is ignored. Only <name/>[@person-group-type='author'] and <name/>[@person-group-type='editor'] is supported in element-citation[@publication-type='journal'].</report>
            
            <report test="@person-group-type='author' and preceding-sibling::person-group[@person-group-type='author']" 
                id="element-citation-journal-child-report-2" 
                role="warn">
                Extra <name/>[@person-group-type='author'] in element-citation[@publication-type='journal'] is ignored.</report>
            
            <report test="@person-group-type='editor' and preceding-sibling::person-group[@person-group-type='editor']" 
                id="element-citation-journal-child-report-3" 
                role="warn">
                Extra <name/>[@person-group-type='editor'] in element-citation[@publication-type='journal'] is ignored.</report>
             
             <report test="(@person-group-type='author' or @person-group-type='editor') and not(name) and not(collab) and not(etal)" 
                 id="element-citation-journal-report-15" 
                 role="warn">
                 <name/>[@person-group-type='<value-of select="@person-group-type"/>'] without &lt;name&gt;, &lt;collab&gt; or &lt;etal&gt; in element-citation[@publication-type='journal'] is ignored.</report>
         </rule>
        
        <rule context="element-citation[@publication-type='journal']/person-group/*">
            <assert test="name()='collab'
                or name()='name'
                or name()='etal'"
                id="element-citation-journal-child-assert-1"
                role="warn">&lt;<name/>&gt; in person-group in element-citation[@publication-type="journal"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='journal']/year">
            <let name="count" value="count(preceding-sibling::year)"/>
            <assert test="$count &lt; 2"
                id="element-citation-journal-child-assert-2"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='journal']/article-title">
            <let name="count" value="count(preceding-sibling::article-title)"/>
            <assert test="$count &lt; 2"
                id="element-citation-journal-child-assert-3"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='journal']/source">
            <let name="count" value="count(preceding-sibling::source)"/>
            <assert test="$count &lt; 2"
                id="element-citation-journal-child-assert-4"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='journal']/volume">
            <let name="count" value="count(preceding-sibling::volume)"/>
            <assert test="$count &lt; 2"
                id="element-citation-journal-child-assert-15"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='journal']/issue">
            <let name="count" value="count(preceding-sibling::issue)"/>
            <assert test="$count &lt; 2"
                id="element-citation-journal-child-assert-5"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='journal']/fpage">
            <let name="count" value="count(preceding-sibling::fpage)"/>
            <assert test="$count &lt; 2"
                id="element-citation-journal-child-assert-6"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored.</assert>
            
            <report test="($count > 0) and (count(preceding-sibling::source) != 2)"
                id="element-citation-journal-child-report-6"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored when there aren't 2 &lt;source&gt; elements.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='journal']/lpage">
            <let name="count" value="count(preceding-sibling::lpage)"/>
            <assert test="$count &lt; 2"
                id="element-citation-journal-child-assert-7"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored.</assert>
            
            <report test="($count > 0) and (count(preceding-sibling::source) != 2)"
                id="element-citation-journal-child-report-7"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored when there aren't 2 &lt;source&gt; elements.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='journal']/page-range">
            <let name="count" value="count(preceding-sibling::page-range)"/>
            <assert test="$count &lt; 2"
                id="element-citation-journal-child-assert-8"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored.</assert>
            
            <report test="($count > 0) and (count(preceding-sibling::source) != 2)"
                id="element-citation-journal-child-report-8"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored when there aren't 2 &lt;source&gt; elements.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='journal']/elocation-id">
            <let name="count" value="count(preceding-sibling::elocation-id)"/>
            <assert test="$count &lt; 2"
                id="element-citation-journal-child-assert-9"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored.</assert>
            
            <report test="($count > 0) and (count(preceding-sibling::source) != 2)"
                id="element-citation-journal-child-report-9"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored when there aren't 2 &lt;source&gt; elements.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='journal']/pub-id">
            <report test="not(@xlink:href) and not(@pub-id-type='doi') and not(@pub-id-type='pmid') and not(@pub-id-type='pmcid')"
                id="element-citation-journal-child-report-4"
                role="warn">&lt;<name/>&gt; without one of the following attributes is ignored - @xlink:href, @pub-id-type='doi', @pub-id-type='pmid', @pub-id-type='pmcid'.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='journal']/ext-link">
            <let name="count" value="count(preceding-sibling::ext-link)"/>
            <assert test="($count=0)"
                id="element-citation-journal-child-assert-10"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='journal']/comment">
            <let name="count" value="count(preceding-sibling::comment)"/>
            <assert test="$count &lt; 2"
                id="element-citation-journal-child-assert-12"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='journal']/season">
            <let name="count" value="count(preceding-sibling::season)"/>
            <assert test="$count &lt; 2"
                id="element-citation-journal-child-assert-13"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="journal"] is ignored.</assert>
        </rule>
    </pattern>
    
    <pattern id="element-citation-book">
        <rule context="element-citation[@publication-type='book']">
            
            <assert test="source" 
                id="element-citation-book-assert-1" 
                role="warn">
                <name/>[@publication-type='<value-of select="@publication-type"/>'] without &lt;source&gt; is ignored.</assert>
            
        </rule>
        
        <rule context="element-citation[@publication-type='book']/*">
            
            <assert test="name()='person-group'
                or name()='year'
                or name()='chapter-title'
                or name()='source'
                or name()='volume'
                or name()='edition'
                or name()='publisher-loc'
                or name()='publisher-name'
                or name()='fpage'
                or name()='lpage'
                or name()='page-range'
                or name()='elocation-id'
                or name()='pub-id'
                or name()='ext-link'
                or name()='comment'
                or name()='isbn'"
                id="element-citation-book-assert-2"
                role="warn">&lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored.</assert>
        </rule>
        
    </pattern>
    
    <pattern id="element-citation-book-children">
        <rule context="element-citation[@publication-type='book']/person-group">
            
            <report test="not(@person-group-type='author') and not(@person-group-type='editor') and not(@person-group-type='translator')" 
                id="element-citation-book-child-report-1" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] is ignored. Only <name/>[@person-group-type='author'], <name/>[@person-group-type='editor'] and <name/>[@person-group-type='translator'] is supported in element-citation[@publication-type='book'].</report>
            
            <report test="@person-group-type='author' and preceding-sibling::person-group[@person-group-type='author']" 
                id="element-citation-book-child-report-2" 
                role="warn">
                Extra <name/>[@person-group-type='author'] in element-citation[@publication-type='book'] is ignored.</report>
            
            <report test="@person-group-type='editor' and preceding-sibling::person-group[@person-group-type='editor']" 
                id="element-citation-book-child-report-3" 
                role="warn">
                Extra <name/>[@person-group-type='editor'] in element-citation[@publication-type='book'] is ignored.</report>
            
            <report test="@person-group-type='translator' and preceding-sibling::person-group[@person-group-type='translator']" 
                id="element-citation-book-child-report-4" 
                role="warn">
                Extra <name/>[@person-group-type='translator'] in element-citation[@publication-type='book'] is ignored.</report>
            
            <report test="(@person-group-type='translator' or @person-group-type='author' or @person-group-type='editor') and not(name) and not(collab) and not(etal)" 
                id="element-citation-book-child-report-5" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] without &lt;name&gt;, &lt;collab&gt; or &lt;etal&gt; in element-citation[@publication-type='book'] is ignored.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='book']/person-group/*">
            <assert test="name()='collab'
                or name()='name'
                or name()='etal'"
                id="element-citation-book-child-assert-1"
                role="warn">&lt;<name/>&gt; in person-group in element-citation[@publication-type="book"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='book']/year">
            <let name="count" value="count(preceding-sibling::year)"/>
            <assert test="$count = 0"
                id="element-citation-book-child-assert-2"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='book']/chapter-title">
            <let name="count" value="count(preceding-sibling::chapter-title)"/>
            <assert test="$count = 0"
                id="element-citation-book-child-assert-3"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='book']/source">
            <let name="count" value="count(preceding-sibling::source)"/>
            <assert test="$count = 0"
                id="element-citation-book-child-assert-4"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='book']/volume">
            <let name="count" value="count(preceding-sibling::volume)"/>
            <assert test="$count = 0"
                id="element-citation-book-child-assert-15"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='book']/edition">
            <let name="count" value="count(preceding-sibling::edition)"/>
            <assert test="$count &lt; 2"
                id="element-citation-book-child-assert-5"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='book']/fpage">
            <let name="count" value="count(preceding-sibling::fpage)"/>
            <assert test="$count = 0"
                id="element-citation-book-child-assert-6"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored.</assert>
            
            <report test="preceding-sibling::elocation-id or preceding-sibling::page-range"
                id="element-citation-book-child-report-6"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored when there is an &lt;elocation-id&gt; or &lt;page-range&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='book']/lpage">
            <let name="count" value="count(preceding-sibling::lpage)"/>
            <assert test="$count = 0"
                id="element-citation-book-child-assert-7"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored.</assert>
            
            <report test="preceding-sibling::elocation-id or preceding-sibling::page-range"
                id="element-citation-book-child-report-7"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored when there is an &lt;elocation-id&gt; or &lt;page-range&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='book']/page-range">
            <let name="count" value="count(preceding-sibling::page-range)"/>
            <assert test="$count = 0"
                id="element-citation-book-child-assert-8"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored.</assert>
            
            <report test="preceding-sibling::fpage or preceding-sibling::lpage or preceding-sibling::elocation-id"
                id="element-citation-book-child-report-8"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored when there is a &lt;fpage&gt;, &lt;lpage&gt; or &lt;elocation-id&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='book']/elocation-id">
            <let name="count" value="count(preceding-sibling::elocation-id)"/>
            <assert test="$count &lt; 2"
                id="element-citation-book-child-assert-9"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored.</assert>
            
            <report test="preceding-sibling::fpage or preceding-sibling::lpage or preceding-sibling::page-range"
                id="element-citation-book-child-report-9"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored when there is a &lt;fpage&gt;, &lt;lpage&gt; or &lt;page-range&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='book']/pub-id">
            <report test="not(@xlink:href) and not(@pub-id-type='doi') and not(@pub-id-type='pmid') and not(@pub-id-type='pmcid')"
                id="element-citation-book-child-report-20"
                role="warn">&lt;<name/>&gt; without one of the following attributes is ignored - @xlink:href, @pub-id-type='doi', @pub-id-type='pmid', @pub-id-type='pmcid'.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='book']/ext-link">
            <let name="count" value="count(preceding-sibling::ext-link)"/>
            <assert test="($count=0)"
                id="element-citation-book-child-assert-10"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='book']/comment">
            <let name="count" value="count(preceding-sibling::comment)"/>
            <assert test="($count=0)"
                id="element-citation-book-child-assert-12"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='book']/isbn">
            <let name="count" value="count(preceding-sibling::isbn)"/>
            <assert test="$count = 0"
                id="element-citation-book-child-assert-13"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="book"] is ignored.</assert>
        </rule>
    </pattern>
    
    <pattern id="element-citation-report">
        <rule context="element-citation[@publication-type='report']">
            
            <assert test="source" 
                id="element-citation-report-assert-1" 
                role="warn">
                <name/>[@publication-type='<value-of select="@publication-type"/>'] without &lt;source&gt; is ignored.</assert>
            
        </rule>
        
        <rule context="element-citation[@publication-type='report']/*">
            
            <assert test="name()='person-group'
                or name()='year'
                or name()='article-title'
                or name()='chapter-title'
                or name()='gov'
                or name()='source'
                or name()='volume'
                or name()='publisher-loc'
                or name()='publisher-name'
                or name()='fpage'
                or name()='lpage'
                or name()='page-range'
                or name()='elocation-id'
                or name()='pub-id'
                or name()='ext-link'"
                id="element-citation-report-assert-2"
                role="warn">&lt;<name/>&gt; in element-citation[@publication-type="report"] is ignored.</assert>
        </rule>
        
    </pattern>
    
    <pattern id="element-citation-report-children">
        <rule context="element-citation[@publication-type='report']/person-group">
            
            <report test="not(@person-group-type='author')" 
                id="element-citation-report-child-report-1" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] is ignored. Only <name/>[@person-group-type='author'] is supported in element-citation[@publication-type='report'].</report>
            
            <report test="@person-group-type='author' and preceding-sibling::person-group[@person-group-type='author']" 
                id="element-citation-report-child-report-2" 
                role="warn">
                Extra <name/>[@person-group-type='author'] in element-citation[@publication-type='report'] is ignored.</report>
            
            <report test="(@person-group-type='author') and not(name) and not(collab) and not(etal)" 
                id="element-citation-report-child-report-5" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] without &lt;name&gt;, &lt;collab&gt; or &lt;etal&gt; in element-citation[@publication-type='report'] is ignored.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='report']/person-group/*">
            <assert test="name()='collab'
                or name()='name'
                or name()='etal'"
                id="element-citation-report-child-assert-1"
                role="warn">&lt;<name/>&gt; in person-group in element-citation[@publication-type="report"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='report']/year">
            <let name="count" value="count(preceding-sibling::year)"/>
            <assert test="$count = 0"
                id="element-citation-report-child-assert-2"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="report"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='report']/chapter-title|element-citation[@publication-type='report']/article-title|element-citation[@publication-type='report']/gov">
            <let name="count" value="count(preceding-sibling::chapter-title) + count(preceding-sibling::article-title) + count(preceding-sibling::gov)"/>
            <assert test="$count = 0"
                id="element-citation-report-child-assert-3"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="report"] is ignored. Only 1 &lt;chapter-title&gt;, &lt;article-title&gt; or &lt;gov&gt; is supported.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='report']/source">
            <let name="count" value="count(preceding-sibling::source)"/>
            <assert test="$count = 0"
                id="element-citation-report-child-assert-4"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="report"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='report']/volume">
            <let name="count" value="count(preceding-sibling::volume)"/>
            <assert test="$count = 0"
                id="element-citation-report-child-assert-15"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="report"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='report']/fpage">
            <let name="count" value="count(preceding-sibling::fpage)"/>
            <assert test="$count = 0"
                id="element-citation-report-child-assert-6"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="report"] is ignored.</assert>
            
            <report test="preceding-sibling::elocation-id or preceding-sibling::page-range"
                id="element-citation-report-child-report-6"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="report"] is ignored when there is an &lt;elocation-id&gt; or &lt;page-range&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='report']/lpage">
            <let name="count" value="count(preceding-sibling::lpage)"/>
            <assert test="$count = 0"
                id="element-citation-report-child-assert-7"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="report"] is ignored.</assert>
            
            <report test="preceding-sibling::elocation-id or preceding-sibling::page-range"
                id="element-citation-report-child-report-7"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="report"] is ignored when there is an &lt;elocation-id&gt; or &lt;page-range&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='report']/page-range">
            <let name="count" value="count(preceding-sibling::page-range)"/>
            <assert test="$count = 0"
                id="element-citation-report-child-assert-8"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="report"] is ignored.</assert>
            
            <report test="preceding-sibling::fpage or preceding-sibling::lpage or preceding-sibling::elocation-id"
                id="element-citation-report-child-report-8"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="report"] is ignored when there is a &lt;fpage&gt;, &lt;lpage&gt; or &lt;elocation-id&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='report']/elocation-id">
            <let name="count" value="count(preceding-sibling::elocation-id)"/>
            <assert test="$count &lt; 2"
                id="element-citation-report-child-assert-9"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="report"] is ignored.</assert>
            
            <report test="preceding-sibling::fpage or preceding-sibling::lpage or preceding-sibling::page-range"
                id="element-citation-report-child-report-9"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="report"] is ignored when there is a &lt;fpage&gt;, &lt;lpage&gt; or &lt;page-range&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='report']/pub-id">
            <report test="not(@xlink:href) and not(@pub-id-type='doi') and not(@pub-id-type='pmid') and not(@pub-id-type='pmcid')"
                id="element-citation-report-child-report-20"
                role="warn">&lt;<name/>&gt; without one of the following attributes is ignored - @xlink:href, @pub-id-type='doi', @pub-id-type='pmid', @pub-id-type='pmcid'.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='report']/ext-link">
            <let name="count" value="count(preceding-sibling::ext-link)"/>
            <assert test="($count=0)"
                id="element-citation-report-child-assert-10"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="report"] is ignored.</assert>
        </rule>
    </pattern>
    
    <pattern id="element-citation-confproc">
        <rule context="element-citation[@publication-type='confproc']">
            
            <assert test="conf-name" 
                id="element-citation-confproc-assert-1" 
                role="warn">
                <name/>[@publication-type='<value-of select="@publication-type"/>'] without &lt;conf-name&gt; is ignored.</assert>
            
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/*">
            
            <assert test="name()='person-group'
                or name()='year'
                or name()='article-title'
                or name()='conf-name'
                or name()='conf-loc'
                or name()='conf-date'
                or name()='volume'
                or name()='issue'
                or name()='fpage'
                or name()='lpage'
                or name()='page-range'
                or name()='elocation-id'
                or name()='pub-id'
                or name()='ext-link'
                or name()='comment'"
                id="element-citation-confproc-assert-2"
                role="warn">&lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored.</assert>
        </rule>
        
    </pattern>
    
    <pattern id="element-citation-confproc-children">
        <rule context="element-citation[@publication-type='confproc']/person-group">
            
            <report test="not(@person-group-type='author') and not(@person-group-type='editor')" 
                id="element-citation-confproc-child-report-1" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] is ignored. Only <name/>[@person-group-type='author'] and <name/>[@person-group-type='editor'] is supported in element-citation[@publication-type='confproc'].</report>
            
            <report test="@person-group-type='author' and preceding-sibling::person-group[@person-group-type='author']" 
                id="element-citation-confproc-child-report-2" 
                role="warn">
                Extra <name/>[@person-group-type='author'] in element-citation[@publication-type='confproc'] is ignored.</report>
            
            <report test="@person-group-type='editor' and preceding-sibling::person-group[@person-group-type='editor']" 
                id="element-citation-confproc-child-report-3" 
                role="warn">
                Extra <name/>[@person-group-type='editor'] in element-citation[@publication-type='confproc'] is ignored.</report>
            
            <report test="(@person-group-type='author' or @person-group-type='editor') and not(name) and not(collab) and not(etal)" 
                id="element-citation-confproc-child-report-5" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] without &lt;name&gt;, &lt;collab&gt; or &lt;etal&gt; in element-citation[@publication-type='confproc'] is ignored.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/person-group/*">
            <assert test="name()='collab'
                or name()='name'
                or name()='etal'"
                id="element-citation-confproc-child-assert-1"
                role="warn">&lt;<name/>&gt; in person-group in element-citation[@publication-type="confproc"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/year">
            <let name="count" value="count(preceding-sibling::year)"/>
            <assert test="$count = 0"
                id="element-citation-confproc-child-assert-2"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/article-title">
            <let name="count" value="count(preceding-sibling::article-title)"/>
            <assert test="$count = 0"
                id="element-citation-confproc-child-assert-3"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored. Only 1 &lt;article-title&gt; is supported.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/conf-name">
            <let name="count" value="count(preceding-sibling::conf-name)"/>
            <assert test="$count = 0"
                id="element-citation-confproc-child-assert-4"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/conf-loc">
            <let name="count" value="count(preceding-sibling::conf-loc)"/>
            <assert test="$count = 0"
                id="element-citation-confproc-child-assert-14"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/conf-date">
            <let name="count" value="count(preceding-sibling::conf-date)"/>
            <assert test="$count = 0"
                id="element-citation-confproc-child-assert-15"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/volume">
            <let name="count" value="count(preceding-sibling::volume)"/>
            <assert test="$count = 0"
                id="element-citation-confproc-child-assert-16"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/issue">
            <let name="count" value="count(preceding-sibling::issue)"/>
            <assert test="$count = 0"
                id="element-citation-confproc-child-assert-17"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/fpage">
            <let name="count" value="count(preceding-sibling::fpage)"/>
            <assert test="$count = 0"
                id="element-citation-confproc-child-assert-6"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored.</assert>
            
            <report test="preceding-sibling::elocation-id or preceding-sibling::page-range"
                id="element-citation-confproc-child-report-6"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored when there is an &lt;elocation-id&gt; or &lt;page-range&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/lpage">
            <let name="count" value="count(preceding-sibling::lpage)"/>
            <assert test="$count = 0"
                id="element-citation-confproc-child-assert-7"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored.</assert>
            
            <report test="preceding-sibling::elocation-id or preceding-sibling::page-range"
                id="element-citation-confproc-child-report-7"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored when there is an &lt;elocation-id&gt; or &lt;page-range&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/page-range">
            <let name="count" value="count(preceding-sibling::page-range)"/>
            <assert test="$count = 0"
                id="element-citation-confproc-child-assert-8"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored.</assert>
            
            <report test="preceding-sibling::fpage or preceding-sibling::lpage or preceding-sibling::elocation-id"
                id="element-citation-confproc-child-report-8"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored when there is a &lt;fpage&gt;, &lt;lpage&gt; or &lt;elocation-id&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/elocation-id">
            <let name="count" value="count(preceding-sibling::elocation-id)"/>
            <assert test="$count &lt; 2"
                id="element-citation-confproc-child-assert-9"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored.</assert>
            
            <report test="preceding-sibling::fpage or preceding-sibling::lpage or preceding-sibling::page-range"
                id="element-citation-confproc-child-report-9"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored when there is a &lt;fpage&gt;, &lt;lpage&gt; or &lt;page-range&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/pub-id">
            <report test="not(@xlink:href) and not(@pub-id-type='doi') and not(@pub-id-type='pmid') and not(@pub-id-type='pmcid')"
                id="element-citation-confproc-child-report-20"
                role="warn">&lt;<name/>&gt; without one of the following attributes is ignored - @xlink:href, @pub-id-type='doi', @pub-id-type='pmid', @pub-id-type='pmcid'.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/ext-link">
            <let name="count" value="count(preceding-sibling::ext-link)"/>
            <assert test="($count=0)"
                id="element-citation-confproc-child-assert-10"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='confproc']/comment">
            <let name="count" value="count(preceding-sibling::comment)"/>
            <assert test="($count=0)"
                id="element-citation-confproc-child-assert-12"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="confproc"] is ignored.</assert>
        </rule>
    </pattern>
    
    <pattern id="element-citation-thesis">
        <rule context="element-citation[@publication-type='thesis']">
            
            <assert test="person-group[@person-group-type='author'] and source" 
                id="element-citation-thesis-assert-1" 
                role="warn">
                <name/>[@publication-type='<value-of select="@publication-type"/>'] without both a &lt;person-group person-group-type="author"&gt; and &lt;source&gt; is ignored.</assert>
            
        </rule>
        
        <rule context="element-citation[@publication-type='thesis']/*">
            
            <assert test="name()='person-group'
                or name()='year'
                or name()='source'
                or name()='publisher-name'
                or name()='fpage'
                or name()='lpage'
                or name()='page-range'
                or name()='elocation-id'
                or name()='pub-id'
                or name()='ext-link'
                or name()='comment'"
                id="element-citation-thesis-assert-2"
                role="warn">&lt;<name/>&gt; in element-citation[@publication-type="thesis"] is ignored.</assert>
        </rule>
        
    </pattern>
    
    <pattern id="element-citation-thesis-children">
        <rule context="element-citation[@publication-type='thesis']/person-group">
            
            <report test="not(@person-group-type='author')" 
                id="element-citation-thesis-child-report-1" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] is ignored. Only <name/>[@person-group-type='author'] is supported in element-citation[@publication-type='thesis'].</report>
            
            <report test="@person-group-type='author' and preceding-sibling::person-group[@person-group-type='author']" 
                id="element-citation-thesis-child-report-2" 
                role="warn">
                Extra <name/>[@person-group-type='author'] in element-citation[@publication-type='thesis'] is ignored.</report>
            
            <report test="(@person-group-type='author') and not(name)" 
                id="element-citation-thesis-child-report-5" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] without &lt;name&gt; in element-citation[@publication-type='thesis'] is ignored.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='thesis']/person-group/*">
            <assert test="name()='name'"
                id="element-citation-thesis-child-assert-1"
                role="warn">&lt;<name/>&gt; in person-group in element-citation[@publication-type="thesis"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='thesis']/year">
            <let name="count" value="count(preceding-sibling::year)"/>
            <assert test="$count = 0"
                id="element-citation-thesis-child-assert-2"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="thesis"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='thesis']/source">
            <let name="count" value="count(preceding-sibling::source)"/>
            <assert test="$count = 0"
                id="element-citation-thesis-child-assert-16"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="thesis"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='thesis']/publisher-name">
            <let name="count" value="count(preceding-sibling::publisher-name)"/>
            <assert test="$count = 0"
                id="element-citation-thesis-child-assert-4"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="thesis"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='thesis']/fpage">
            <let name="count" value="count(preceding-sibling::fpage)"/>
            <assert test="$count = 0"
                id="element-citation-thesis-child-assert-6"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="thesis"] is ignored.</assert>
            
            <report test="preceding-sibling::elocation-id or preceding-sibling::page-range"
                id="element-citation-thesis-child-report-6"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="thesis"] is ignored when there is an &lt;elocation-id&gt; or &lt;page-range&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='thesis']/lpage">
            <let name="count" value="count(preceding-sibling::lpage)"/>
            <assert test="$count = 0"
                id="element-citation-thesis-child-assert-7"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="thesis"] is ignored.</assert>
            
            <report test="preceding-sibling::elocation-id or preceding-sibling::page-range"
                id="element-citation-thesis-child-report-7"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="thesis"] is ignored when there is an &lt;elocation-id&gt; or &lt;page-range&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='thesis']/page-range">
            <let name="count" value="count(preceding-sibling::page-range)"/>
            <assert test="$count = 0"
                id="element-citation-thesis-child-assert-8"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="thesis"] is ignored.</assert>
            
            <report test="preceding-sibling::fpage or preceding-sibling::lpage or preceding-sibling::elocation-id"
                id="element-citation-thesis-child-report-8"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="thesis"] is ignored when there is a &lt;fpage&gt;, &lt;lpage&gt; or &lt;elocation-id&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='thesis']/elocation-id">
            <let name="count" value="count(preceding-sibling::elocation-id)"/>
            <assert test="$count &lt; 2"
                id="element-citation-thesis-child-assert-9"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="thesis"] is ignored.</assert>
            
            <report test="preceding-sibling::fpage or preceding-sibling::lpage or preceding-sibling::page-range"
                id="element-citation-thesis-child-report-9"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="thesis"] is ignored when there is a &lt;fpage&gt;, &lt;lpage&gt; or &lt;page-range&gt;.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='thesis']/pub-id">
            <report test="not(@xlink:href) and not(@pub-id-type='doi') and not(@pub-id-type='pmid') and not(@pub-id-type='pmcid')"
                id="element-citation-thesis-child-report-20"
                role="warn">&lt;<name/>&gt; without one of the following attributes is ignored - @xlink:href, @pub-id-type='doi', @pub-id-type='pmid', @pub-id-type='pmcid'.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='thesis']/ext-link">
            <let name="count" value="count(preceding-sibling::ext-link)"/>
            <assert test="($count=0)"
                id="element-citation-thesis-child-assert-10"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="thesis"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='thesis']/comment">
            <let name="count" value="count(preceding-sibling::comment)"/>
            <assert test="($count=0)"
                id="element-citation-thesis-child-assert-12"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="thesis"] is ignored.</assert>
        </rule>
    </pattern>
    
    <pattern id="element-citation-web">
        <rule context="element-citation[@publication-type='web']">
            
            <assert test="ext-link[@xlink:href and @ext-link-type='uri']" 
                id="element-citation-web-assert-1" 
                role="warn">
                <name/>[@publication-type='<value-of select="@publication-type"/>'] without a &lt;ext-link ext-link-type='uri' xlink:href="..."&gt; is ignored.</assert>
            
        </rule>
        
        <rule context="element-citation[@publication-type='web']/*">
            
            <assert test="name()='person-group'
                or name()='year'
                or name()='article-title'
                or name()='source'
                or name()='publisher-name'
                or name()='ext-link'
                or name()='comment'
                or name()='date-in-citation'"
                id="element-citation-web-assert-2"
                role="warn">&lt;<name/>&gt; in element-citation[@publication-type="web"] is ignored.</assert>
        </rule>
        
    </pattern>
    
    <pattern id="element-citation-web-children">
        <rule context="element-citation[@publication-type='web']/person-group">
            
            <report test="not(@person-group-type='author')" 
                id="element-citation-web-child-report-1" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] is ignored. Only <name/>[@person-group-type='author'] is supported in element-citation[@publication-type='web'].</report>
            
            <report test="@person-group-type='author' and preceding-sibling::person-group[@person-group-type='author']" 
                id="element-citation-web-child-report-2" 
                role="warn">
                Extra <name/>[@person-group-type='author'] in element-citation[@publication-type='web'] is ignored.</report>
            
            <report test="(@person-group-type='author') and not(name) and not(collab) and not(etal)" 
                id="element-citation-web-child-report-5" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] without &lt;name&gt;, &lt;collab&gt; or &lt;etal&gt; in element-citation[@publication-type='web'] is ignored.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='web']/person-group/*">
            <assert test="name()='name'
                or name()='collab'
                or name()='etal'"
                id="element-citation-web-child-assert-1"
                role="warn">&lt;<name/>&gt; in person-group in element-citation[@publication-type="web"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='web']/year">
            <let name="count" value="count(preceding-sibling::year)"/>
            <assert test="$count = 0"
                id="element-citation-web-child-assert-2"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="web"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='web']/article-title">
            <let name="count" value="count(preceding-sibling::article-title)"/>
            <assert test="$count = 0"
                id="element-citation-web-child-assert-3"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="web"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='web']/source">
            <let name="count" value="count(preceding-sibling::source)"/>
            <assert test="$count = 0"
                id="element-citation-web-child-assert-16"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="web"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='web']/publisher-name">
            <let name="count" value="count(preceding-sibling::publisher-name)"/>
            <assert test="$count = 0"
                id="element-citation-web-child-assert-4"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="web"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='web']/date-in-citation">
            <let name="count" value="count(preceding-sibling::date-in-citation)"/>
            <assert test="$count = 0"
                id="element-citation-web-child-assert-6"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="web"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='web']/ext-link">
            <let name="count" value="count(preceding-sibling::ext-link)"/>
            <assert test="($count=0)"
                id="element-citation-web-child-assert-10"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="web"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='web']/comment">
            <let name="count" value="count(preceding-sibling::comment)"/>
            <assert test="($count=0)"
                id="element-citation-web-child-assert-12"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="web"] is ignored.</assert>
        </rule>
    </pattern>
    
    <pattern id="element-citation-data">
        <rule context="element-citation[@publication-type='data']">
            
            <assert test="data-title or source" 
                id="element-citation-data-assert-1" 
                role="warn">
                <name/>[@publication-type='<value-of select="@publication-type"/>'] without a &lt;data-title&gt; or &lt;source&gt; is ignored.</assert>
            
        </rule>
        
        <rule context="element-citation[@publication-type='data']/*">
            
            <assert test="name()='person-group'
                or name()='year'
                or name()='data-title'
                or name()='source'
                or name()='version'
                or name()='pub-id'
                or name()='ext-link'
                or name()='comment'
                or name()='date-in-citation'"
                id="element-citation-data-assert-2"
                role="warn">&lt;<name/>&gt; in element-citation[@publication-type="data"] is ignored.</assert>
        </rule>
        
    </pattern>
    
    <pattern id="element-citation-data-children">
        <rule context="element-citation[@publication-type='data']/person-group">
            
            <report test="not(@person-group-type='author')" 
                id="element-citation-data-child-report-1" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] is ignored. Only <name/>[@person-group-type='author'] is supported in element-citation[@publication-type='data'].</report>
            
            <report test="@person-group-type='author' and preceding-sibling::person-group[@person-group-type='author']" 
                id="element-citation-data-child-report-2" 
                role="warn">
                Extra <name/>[@person-group-type='author'] in element-citation[@publication-type='data'] is ignored.</report>
            
            <report test="(@person-group-type='author') and not(name) and not(collab) and not(etal)" 
                id="element-citation-data-child-report-5" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] without &lt;name&gt;, &lt;collab&gt; or &lt;etal&gt; in element-citation[@publication-type='data'] is ignored.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='data']/person-group/*">
            <assert test="name()='name'
                or name()='collab'
                or name()='etal'"
                id="element-citation-data-child-assert-1"
                role="warn">&lt;<name/>&gt; in person-group in element-citation[@publication-type="data"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='data']/year">
            <let name="count" value="count(preceding-sibling::year)"/>
            <assert test="$count = 0"
                id="element-citation-data-child-assert-2"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="data"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='data']/data-title">
            <let name="count" value="count(preceding-sibling::data-title)"/>
            <assert test="$count = 0"
                id="element-citation-data-child-assert-3"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="data"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='data']/source">
            <let name="count" value="count(preceding-sibling::source)"/>
            <assert test="$count = 0"
                id="element-citation-data-child-assert-16"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="data"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='data']/version">
            <let name="count" value="count(preceding-sibling::version)"/>
            <assert test="$count = 0"
                id="element-citation-data-child-assert-4"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="data"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='data']/date-in-citation">
            <let name="count" value="count(preceding-sibling::date-in-citation)"/>
            <assert test="$count = 0"
                id="element-citation-data-child-assert-6"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="data"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='data']/ext-link">
            <let name="count" value="count(preceding-sibling::ext-link)"/>
            <assert test="($count=0)"
                id="element-citation-data-child-assert-10"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="data"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='data']/comment">
            <let name="count" value="count(preceding-sibling::comment)"/>
            <assert test="($count=0)"
                id="element-citation-data-child-assert-12"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="data"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='data']/pub-id">
            <report test="not(@xlink:href) and not(@pub-id-type='doi')"
                id="element-citation-data-child-report-20"
                role="warn">&lt;<name/>&gt; without one of the following attributes is ignored - @xlink:href, @pub-id-type='doi'.</report>
        </rule>
    </pattern>
    
    <pattern id="element-citation-software">
        <rule context="element-citation[@publication-type='software']">
            
            <assert test="source" 
                id="element-citation-software-assert-1" 
                role="warn">
                <name/>[@publication-type='<value-of select="@publication-type"/>'] without a &lt;source&gt; is ignored.</assert>
            
        </rule>
        
        <rule context="element-citation[@publication-type='software']/*">
            
            <assert test="name()='person-group'
                or name()='year'
                or name()='article-title'
                or name()='data-title'
                or name()='source'
                or name()='version'
                or name()='pub-id'
                or name()='ext-link'
                or name()='comment'"
                id="element-citation-software-assert-2"
                role="warn">&lt;<name/>&gt; in element-citation[@publication-type="software"] is ignored.</assert>
        </rule>
        
    </pattern>
    
    <pattern id="element-citation-software-children">
        <rule context="element-citation[@publication-type='software']/person-group">
            
            <report test="not(@person-group-type='author')" 
                id="element-citation-software-child-report-1" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] is ignored. Only <name/>[@person-group-type='author'] is supported in element-citation[@publication-type='software'].</report>
            
            <report test="@person-group-type='author' and preceding-sibling::person-group[@person-group-type='author']" 
                id="element-citation-software-child-report-2" 
                role="warn">
                Extra <name/>[@person-group-type='author'] in element-citation[@publication-type='software'] is ignored.</report>
            
            <report test="(@person-group-type='author') and not(name) and not(collab) and not(etal)" 
                id="element-citation-software-child-report-5" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] without &lt;name&gt;, &lt;collab&gt; or &lt;etal&gt; in element-citation[@publication-type='software'] is ignored.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='software']/person-group/*">
            <assert test="name()='name'
                or name()='collab'
                or name()='etal'"
                id="element-citation-software-child-assert-1"
                role="warn">&lt;<name/>&gt; in person-group in element-citation[@publication-type="software"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='software']/year">
            <let name="count" value="count(preceding-sibling::year)"/>
            <assert test="$count = 0"
                id="element-citation-software-child-assert-2"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="software"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='software']/data-title">
            <let name="count" value="count(preceding-sibling::data-title) + count(preceding-sibling::article-title)"/>
            <assert test="$count = 0"
                id="element-citation-software-child-assert-3"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="software"] is ignored when rhere is another &lt;data-title&gt; or &lt;article-title&gt;.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='software']/article-title">
            <let name="count" value="count(preceding-sibling::data-title) + count(preceding-sibling::article-title)"/>
            <assert test="$count = 0"
                id="element-citation-software-child-assert-7"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="software"] is ignored when rhere is another &lt;data-title&gt; or &lt;article-title&gt;.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='software']/source">
            <let name="count" value="count(preceding-sibling::source)"/>
            <assert test="$count = 0"
                id="element-citation-software-child-assert-16"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="software"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='software']/version">
            <let name="count" value="count(preceding-sibling::version)"/>
            <assert test="$count = 0"
                id="element-citation-software-child-assert-4"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="software"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='software']/ext-link">
            <let name="count" value="count(preceding-sibling::ext-link)"/>
            <assert test="($count=0)"
                id="element-citation-software-child-assert-10"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="software"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='software']/comment">
            <let name="count" value="count(preceding-sibling::comment)"/>
            <assert test="($count=0)"
                id="element-citation-software-child-assert-12"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="software"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='software']/pub-id">
            <report test="not(@xlink:href) and not(@pub-id-type='doi')"
                id="element-citation-software-child-report-20"
                role="warn">&lt;<name/>&gt; without one of the following attributes is ignored - @xlink:href, @pub-id-type='doi'.</report>
        </rule>
    </pattern>
    
    <pattern id="element-citation-preprint">
        <rule context="element-citation[@publication-type='preprint']">
            
            <assert test="article-title and source and (pub-id or ext-link)" 
                id="element-citation-preprint-assert-1" 
                role="warn">
                <name/>[@publication-type='<value-of select="@publication-type"/>'] without a &lt;article-title&gt;,  &lt;source&gt;, and either &lt;pub-id&gt; or &lt;ext-link&gt; is ignored.</assert>
            
        </rule>
        
        <rule context="element-citation[@publication-type='preprint']/*">
            
            <assert test="name()='person-group'
                or name()='year'
                or name()='article-title'
                or name()='source'
                or name()='elocation-id'
                or name()='pub-id'
                or name()='ext-link'
                or name()='comment'"
                id="element-citation-preprint-assert-2"
                role="warn">&lt;<name/>&gt; in element-citation[@publication-type="preprint"] is ignored.</assert>
        </rule>
        
    </pattern>
    
    <pattern id="element-citation-preprint-children">
        <rule context="element-citation[@publication-type='preprint']/person-group">
            
            <report test="not(@person-group-type='author')" 
                id="element-citation-preprint-child-report-1" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] is ignored. Only <name/>[@person-group-type='author'] is supported in element-citation[@publication-type='preprint'].</report>
            
            <report test="@person-group-type='author' and preceding-sibling::person-group[@person-group-type='author']" 
                id="element-citation-preprint-child-report-2" 
                role="warn">
                Extra <name/>[@person-group-type='author'] in element-citation[@publication-type='preprint'] is ignored.</report>
            
            <report test="(@person-group-type='author') and not(name) and not(collab) and not(etal)" 
                id="element-citation-preprint-child-report-5" 
                role="warn">
                <name/>[@person-group-type='<value-of select="@person-group-type"/>'] without &lt;name&gt;, &lt;collab&gt; or &lt;etal&gt; in element-citation[@publication-type='preprint'] is ignored.</report>
        </rule>
        
        <rule context="element-citation[@publication-type='preprint']/person-group/*">
            <assert test="name()='name'
                or name()='collab'
                or name()='etal'"
                id="element-citation-preprint-child-assert-1"
                role="warn">&lt;<name/>&gt; in person-group in element-citation[@publication-type="preprint"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='preprint']/year">
            <let name="count" value="count(preceding-sibling::year)"/>
            <assert test="$count = 0"
                id="element-citation-preprint-child-assert-2"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="preprint"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='preprint']/article-title">
            <let name="count" value="count(preceding-sibling::article-title)"/>
            <assert test="$count = 0"
                id="element-citation-preprint-child-assert-7"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="preprint"] is ignored when rhere is another &lt;data-title&gt; or &lt;article-title&gt;.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='preprint']/source">
            <let name="count" value="count(preceding-sibling::source)"/>
            <assert test="$count = 0"
                id="element-citation-preprint-child-assert-16"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="preprint"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='preprint']/elocation-id">
            <let name="count" value="count(preceding-sibling::elocation-id)"/>
            <assert test="$count = 0"
                id="element-citation-preprint-child-assert-4"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="preprint"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='preprint']/ext-link">
            <let name="count" value="count(preceding-sibling::ext-link)"/>
            <assert test="($count=0)"
                id="element-citation-preprint-child-assert-10"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="preprint"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='preprint']/comment">
            <let name="count" value="count(preceding-sibling::comment)"/>
            <assert test="($count=0)"
                id="element-citation-preprint-child-assert-12"
                role="warn">Extra &lt;<name/>&gt; in element-citation[@publication-type="preprint"] is ignored.</assert>
        </rule>
        
        <rule context="element-citation[@publication-type='preprint']/pub-id">
            <report test="not(@xlink:href) and not(@pub-id-type='doi')"
                id="element-citation-preprint-child-report-20"
                role="warn">&lt;<name/>&gt; without one of the following attributes is ignored - @xlink:href, @pub-id-type='doi'.</report>
        </rule>
    </pattern>
    
    <pattern id="elocation-id_parent">
        <rule context="elocation-id">
            <let name="parent" value="name(..)"/>
            <assert id="elocation-id_parent-assert-1" test="$parent='article-meta' or $parent='element-citation'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="email_parent">
        <rule context="email">
            <let name="parent" value="name(..)"/>
            <assert id="email_parent-assert-1" test="parent::contrib[@contrib-type='author']" 
                role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="etal_content">
        <rule context="etal">
            <let name="parent" value="name(..)"/>
            
            <assert id="etal_content-assert-1" test="$parent='person-group'" 
                role="warn">&lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.</assert>
            
            <report id="etal_content-report-1" test="not(*) and (normalize-space(.)='')" 
                role="warn">Empty &lt;<name/>&gt; is ignored.</report>
        </rule>
    </pattern>

    <pattern id="ext-link">
        <rule context="ext-link">
            <let name="parent" value="name(..)"/>
            <report id="ext-link-report-1" test="not(contains(@xlink:href, ':') or ancestor-or-self::*[contains(@xml:base, ':')])" role="warn">
                &lt;<name/>&gt; without an absolute @xlink:href is ignored.
            </report>
            <assert id="ext-link-assert-1" test="
                $parent!='article-meta'
                and $parent!='contrib'
                and $parent!='contrib-group'
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
                or $parent='app'
                " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
            <report id="fig_ancestor-report-1" test="ancestor::ack" role="warn">
                &lt;<name/>&gt; in &lt;ack&gt; is ignored.
            </report>
        </rule>
    </pattern>
    
    <pattern id="fn_parent">
        <rule context="fn">
            <let name="parent" value="name(..)"/>
            <assert id="fn_parent-assert-1" test="$parent='fn-group' 
                or $parent='author-notes' 
                or $parent='table-wrap-foot'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="fn-group_parent">
        <rule context="fn-group">
            <let name="parent" value="name(..)"/>
            <assert id="fn-group_parent-assert-1" test="$parent='table-wrap-foot' or $parent='sec'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="fpage_parent">
        <rule context="fpage">
            <let name="parent" value="name(..)"/>
            <assert id="fpage_parent-assert-1" test="$parent='article-meta' or $parent='element-citation'" role="warn">
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
    
    <pattern id="funding-group_parent">
        <rule context="funding-group">
            <let name="parent" value="name(..)"/>
            <assert id="funding-group_parent-assert-1" test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="funding-source_parent">
        <rule context="funding-source">
            <let name="parent" value="name(..)"/>
            <assert id="funding-source_parent-assert-1" test="$parent='award-group'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
            <report id="funding-source_parent-report-1" 
                test="($parent='award-group') and preceding-sibling::funding-source" 
                role="warn">
                Extra &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </report>
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
        <rule context="graphic">
            <let name="parent" value="name(..)"/>
            <assert id="graphic-assert-2" test="(@mimetype='image' and @mime-subtype='jpeg') or ('.jpg'=translate(substring(@xlink:href, string-length(@xlink:href)-3), 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz')) or ('.jpeg'=translate(substring(@xlink:href, string-length(@xlink:href)-4), 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))"  role="warn">
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
                or $parent='app'
                " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="iso-8601-date_parent">
        <rule context="*[@iso-8601-date]">
            <assert id="iso-8601-date_parent-assert-1" test="name()='pub-date' or name()='year'" role="warn">
                @iso-8601-date on &lt;<value-of select="name()"/>&gt; is ignored.
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
    
    <pattern id="institution_parent">
        <rule context="institution">
            <let name="parent" value="name(..)"/>
            <assert id="institution_parent-assert-1" 
                test="$parent='aff' or $parent='institution-wrap'" 
                role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="institution-wrap_parent">
        <rule context="institution-wrap">
            <let name="parent" value="name(..)"/>
            <assert id="institution-wrap_parent-assert-1" test="$parent='funding-source'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
            <report id="institution-wrap_parent-report-1" 
                test="($parent='funding-source') and preceding-sibling::institution-wrap" 
                role="warn">
                Extra &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </report>
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
    
    <pattern id="kwd_child">
        <rule context="kwd/*">
            <let name="parent" value="name(..)"/>
            <assert id="kwd_child-assert-1" 
                test="name()='italic' or name()='sup' or name()='sub' or name()='bold' or name()='sc'" 
                role="warn">
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
                @kwd-group-type='author-generated'
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
            <assert id="label_parent-assert-1" test="$parent='fig' 
                or $parent='disp-formula' 
                or $parent='table-wrap' 
                or $parent='aff'
                or $parent='fn'
                or $parent='list'
                or $parent='def-list'
                or $parent='supplementary-material'
                " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
            <assert id="label_parent-assert-2" test="count(preceding-sibling::label)=0" role="warn">
                Extra &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="list_parent">
        <rule context="list">
            <let name="parent" value="name(..)"/>
            <assert id="list_parent-assert-1" test="$parent='disp-quote' 
                or $parent='sec'
                or $parent='body'
                or $parent='app'
                or $parent='boxed-text'
                or $parent='list-item'
                or $parent='p'
                " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="lpage_parent">
        <rule context="lpage">
            <let name="parent" value="name(..)"/>
            <assert id="lpage_parent-assert-1" test="$parent='article-meta' or $parent='element-citation'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="media_parent">
        <rule context="media">
            <let name="parent" value="name(..)"/>
            <assert id="media_parent-assert-1" test="parent::supplementary-material" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
            <report id="media_parent-report-1" test="parent::supplementary-material and preceding-sibling::media" role="warn">
                Extra &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </report>
        </rule>
    </pattern>

    <pattern id="mimetype_parent">
        <rule context="*[@mimetype]">
            <assert id="mimetype_parent-assert-1" test="name()='graphic'" role="warn">
                @mimetype on &lt;<value-of select="name()"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="mime-subtype_parent">
        <rule context="*[@mime-subtype]">
            <let name="parent" value="name(..)"/>
            <assert id="mime-subtype_parent-assert-1" test="name()='graphic'" role="warn">
                @mime-subtype on &lt;<value-of select="name()"/>&gt; is ignored.
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
        <rule context="*[@accent
            or @accentunder
            or @actiontype
            or @bevelled
            or @class
            or @close
            or @columnalign
            or @columnlines
            or @columnspacing
            or @columnspan
            or @definitionURL
            or @denomalign
            or @depth
            or @displaystyle
            or @encoding
            or @equalcolumns
            or @equalrows
            or @fence
            or @fontfamily
            or @fontsize
            or @fontstyle
            or @fontweight
            or @form
            or @groupalign
            or @height
            or @indentalign
            or @indenttarget
            or @largeop
            or @linebreak
            or @linebreakstyle
            or @linethickness
            or @lspace
            or @mathbackground
            or @mathcolor
            or @mathsize
            or @mathvariant
            or @maxsize
            or @minsize
            or @movablelimits
            or @notation
            or @numalign
            or @open
            or @rowlines
            or @rowspacing
            or @rspace
            or @scriptlevel
            or @separator
            or @separators
            or @stretchy
            or @style
            or @subscriptshift
            or @superscriptshift
            or @symmetric
            or @width]">
            <assert id="mmlmath_attributes-assert-1" test="ancestor::mml:math" role="warn">
                @<value-of select="name(@*[name()='accent'
                    or name()='accentunder'
                    or name()='actiontype'
                    or name()='article-type'
                    or name()='bevelled'
                    or name()='class'
                    or name()='close'
                    or name()='colspan'
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
                    or name()='fandm'
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
                    or name()='mathcoland'
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
                    or name()='rspace'
                    or name()='scriptlevel'
                    or name()='separatand'
                    or name()='separatands'
                    or name()='stretchy'
                    or name()='style'
                    or name()='subj-group-type'
                    or name()='subscriptshift'
                    or name()='superscriptshift'
                    or name()='symmetric'
                    or name()='valign'
                    or name()='width'
                    or name()='xlink:href'
                    or name()='xml:base'
                    or name()='xml:lang'])"/> outside of &lt;mml:math&gt; is ignored.
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
        <rule context="*[@name-style]">
            <assert id="name-style_parent-assert-1" test="name()='name'" role="warn">
                @name-style on &lt;<value-of select="name()"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="named-content_parent">
        <rule context="named-content">
            <let name="parent" value="name(..)"/>
            <assert id="named-content_parent-assert-1" test="$parent='addr-line'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="p">
        <rule context="p">
            <let name="parent" value="name(..)"/>
            <assert id="p-assert-1" test="
                $parent='abstract'
                or $parent='ack'
                or $parent='body'
                or $parent='caption'
                or $parent='def'
                or $parent='disp-quote'
                or $parent='sec'
                or $parent='fn'
                or $parent='list-item'
                or $parent='app'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="permissions">
        <rule context="permissions">
            <let name="parent" value="name(..)"/>
            <assert id="permissions-assert-1" test="$parent='article-meta'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="person-group-1">
        <rule context="person-group[not(@person-group-type)]">
            <assert id="person-group-assert-1" test="true()" role="warn">
                &lt;<name/>&gt; without a @person-group-type is ignored.
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
    
    <pattern id="processing-instructions">
        <rule context="processing-instruction()">
            <report id="processing-instruction-report-1" test="true()" role="warn">
                processing-instruction <value-of select="."/> is ignored
            </report>
        </rule>
    </pattern>

    <pattern id="pub-date">
        <rule context="pub-date">
            <assert id="pub-date-assert-1" test="@date-type" role="warn">
                &lt;<name/>&gt; without a @date-type is ignored.
            </assert>
            <report id="pub-date-report-1" test="(@date-type) and (@date-type!='pub')" role="warn">
                &lt;<name/>&gt; with a @date-type="<value-of select="@date-type"/>".
            </report>
            <report id="pub-date-report-2" test="(@date-type!='pub') and preceding-sibling::pub-date[@date-type='pub']" role="warn">
                Extra &lt;<name/> date-type="pub"&gt; is ignored.
            </report>
       </rule>
    </pattern>
    
    <pattern id="pub-date-iso">
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
        <rule context="pub-date[@iso-8601-date]">
            <assert id="pub-date-assert-4" test="
                (string-length(@iso-8601-date)=10 or substring(@iso-8601-date, 11, 1)='T')
                and
                substring(@iso-8601-date, 5, 1)='-' and substring(@iso-8601-date, 8, 1)='-'
            " role="warn">
                @iso-8601-date="<value-of select="@iso-8601-date"/>" is ignored.
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
            <assert id="pub-id-assert-1" test="true()" role="warn">
                &lt;<name/>&gt; without a @pub-id-type is ignored.
            </assert>
        </rule>
        <rule context="pub-id[not(@pub-id-type='doi')]">
            <assert id="pub-id-assert-2" test="true()" role="warn">
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
        <rule context="*[@pub-id-type]">
            <assert id="pub-id-type_parent-assert-1" test="
                name()='pub-id'
                or name()='article-id'
            " role="warn">
                @pub-id-type on &lt;<value-of select="name()"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="ref_child">
        <rule context="ref">
            <assert test="element-citation" 
                id="ref_child-assert-1" 
                role="warn">&lt;<name/>&gt; without &lt;element-citation&gt; is ignored.</assert>
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
            <report test="preceding-sibling::ref-list"
                id="ref-list_parent-report-1"
                role="warn">Extra &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.</report>
        </rule>
    </pattern>

    <pattern id="sec_parent">
        <rule context="sec">
            <let name="parent" value="name(..)"/>
            <assert id="sec_parent-assert-1" test="
                $parent='body'
                or $parent='sec'
                or $parent='back'
                or $parent='app'
                or $parent='ack'
            " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="sec-type_parent">
        <rule context="*[@sec-type]">
            <assert id="sec-type_parent-assert-1" test="name()='sec'" role="warn">
                @sec-type on &lt;<value-of select="name()"/>&gt; is ignored.
            </assert>
            <assert id="sec-type_parent-assert-2" test="@sec-type='data-availability' or @sec-type='software-availability' or @sec-type='ack'" role="warn">
                @sec-type="<value-of select="@sec-type"/>" on &lt;<value-of select="name()"/>&gt; is ignored.
            </assert>
            <report id="sec-type_parent-report-1" test="(@sec-type='data-availability' or @sec-type='software-availability') and not(parent::back)" role="warn">
                <name/> with @sec-type="<value-of select="@sec-type"/>" in &lt;<value-of select="name(parent::*)"/>&gt; is ignored.
            </report>
        </rule>
    </pattern>

    <pattern id="self-uri">
        <rule context="self-uri[not(@content-type)]">
            <assert id="self-uri-assert-1" test="true()" role="warn">
                &lt;<name/>&gt; without a @content-type is ignored.
            </assert>
        </rule>
        <rule context="self-uri[not(@content-type='pdf')]">
            <assert id="self-uri-assert-2" test="true()" role="warn">
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
        <rule context="self-uri[child::node()]">
            <assert id="self-uri_content-assert-1" test="true()" role="warn">
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
        <rule context="subj-group">
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
    
    <pattern id="supplementary-material_parent">
        <rule context="supplementary-material">
            <let name="parent" value="name(..)"/>
            <assert id="supplementary-material_parent-assert-1" test="$parent='sec'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
            <assert id="supplementary-material_ancestor-assert-2" test="parent::sec/parent::back" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="name(parent::sec/parent::*)"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="surname_given-only">
        <rule context="surname[parent::name[@name-style='given-only']]">
            <let name="parent" value="name(..)"/>
            <assert id="surname_given-only-assert-1" test="true()" role="warn">
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
    
    <pattern id="table_parent">
        <rule context="table">
            <let name="parent" value="name(..)"/>
            <assert id="table_parent-assert-1" test="$parent='table-wrap'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="table">
        <rule context="table-wrap/table">
            <assert id="table-assert-1" test="count(preceding-sibling::table)=0" role="warn">
                Extra &lt;<name/>&gt; in &lt;table-wrap&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="table-wrap">
        <rule context="table-wrap">
            <let name="parent" value="name(..)"/>
            <assert id="table-wrap-assert-1" test="
                $parent='sec'
                or $parent='body'
                or $parent='app'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
            <report id="table-wrap_ancestor-report-1" test="ancestor::ack" role="warn">
                &lt;<name/>&gt; in &lt;ack&gt; is ignored.
            </report>
        </rule>
    </pattern>
    
    <pattern id="tbody_parent">
        <rule context="tbody">
            <let name="parent" value="name(..)"/>
            <assert id="tbody_parent-assert-1" test="$parent='table'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="td_child">
        <rule context="td/*">
            <assert id="td_child-assert-1" test="
                name()='bold'
                or name()='break'
                or name()='ext-link'
                or name()='inline-formula'
                or name()='italic'
                or name()='monospace'
                or name()='sc'
                or name()='sub'
                or name()='sup'
                or name()='underline'
                or name()='xref'
                " role="warn">
                &lt;<name/>&gt; in &lt;td&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="term_parent">
        <rule context="term">
            <let name="parent" value="name(..)"/>
            <assert id="term_parent-assert-1" test="$parent='def-item'
                " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="term_child">
        <rule context="term/*">
            <assert id="term_child-assert-1" test="
                name()='bold'
                or name()='ext-link'
                or name()='italic'
                or name()='monospace'
                or name()='sc'
                or name()='sub'
                or name()='sup'
                or name()='xref'
                " role="warn">
                &lt;<name/>&gt; in &lt;term&gt; is ignored.
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
    
    <pattern id="th_child">
        <rule context="th/*">
            <assert id="th_child-assert-1" test="
                name()='bold'
                or name()='break'
                or name()='ext-link'
                or name()='inline-formula'
                or name()='italic'
                or name()='monospace'
                or name()='sc'
                or name()='sub'
                or name()='sup'
                or name()='underline'
                or name()='xref'
                " role="warn">
                &lt;<name/>&gt; in &lt;th&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="thead_parent">
        <rule context="thead">
            <let name="parent" value="name(..)"/>
            <assert id="thead_parent-assert-1" test="$parent='table'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
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
                $parent='abstract'
                or $parent='ack'
                or $parent='app'
                or $parent='caption'
                or $parent='def-list'
                or $parent='fn-group'
                or $parent='kwd-group'
                or $parent='list'
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
    
    <pattern id="tr_parent">
        <rule context="tr">
            <let name="parent" value="name(..)"/>
            <assert id="tr_parent-assert-1" test="
                $parent='thead'
                or $parent='tbody'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="xlink-href_parent">
        <rule context="*[@xlink:href]">
            <let name="parent" value="name(..)"/>
            <assert id="xlink-href_parent-assert-1" test="
                name()='ext-link'
                or name()='graphic'
                or name()='self-uri'
                or name()='media'
            " role="warn">
                @xlink:href on &lt;<value-of select="name()"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="volume_parent">
        <rule context="volume">
            <let name="parent" value="name(..)"/>
            <assert id="volume_parent-assert-1" test="$parent='article-meta' or $parent='element-citation'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
    
    <pattern id="xref">
        <rule context="xref">
            <let name="parent" value="name(..)"/>
            <assert id="xref-assert-2" test="
                $parent = 'contrib'
                or $parent = 'p'
                or $parent = 'td'
                or $parent = 'th'
                or $parent = 'title'
                or $parent = 'attrib'
                or $parent = 'bold'
                or $parent = 'sup'
                or $parent = 'italic'
                or $parent = 'sub'
                or $parent = 'sc'
                or $parent = 'monospace'
                or $parent = 'roman'
                or $parent = 'strike'
                or $parent = 'underline'
                " role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>

    <pattern id="year">
        <rule context="year">
            <let name="parent" value="name(..)"/>
            <report id="year-report-1" test="(not(@iso-8601-date) and (number(.)!=.))" role="warn">
                &lt;<name/>&gt; without @iso-8601-date or which is not a number in &lt;<value-of select="$parent"/>&gt; is ignored.
            </report>
            <assert id="year-assert-1" test="$parent='pub-date' or $parent='element-citation'" role="warn">
                &lt;<name/>&gt; in &lt;<value-of select="$parent"/>&gt; is ignored.
            </assert>
        </rule>
    </pattern>
</schema>
