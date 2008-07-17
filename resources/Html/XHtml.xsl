<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:d="http://docbook.org/ns/docbook"
                xmlns:xslthl="http://xslthl.sf.net"
                exclude-result-prefixes="xsl d xslthl"
                version="1.0">
  
  <xsl:import href='../docbook-xsl-ns/xhtml/chunk.xsl'/>

  <xsl:output method="html"
              encoding="utf-8"
              indent="no" />

  <xsl:param name="highlight.source" select="1"/>
  <xsl:param name="navig.showtitles" select="0"/>
  <xsl:param name="html.stylesheet" select="'book.css'"/>
  <!-- Not sure if this is really needed, but it doesn't hurt -->
  <xsl:param name="chunker.output.encoding" select="'utf-8'"/>
  <!-- Don't show rules below the header navigation bar or above the footer navigation bar -->
  <xsl:param name="header.rule" select="0"/>
  <xsl:param name="footer.rule" select="0"/>

  <!-- Unfortunately we don't have another way of surrounding the book contents with a div...  -->
  <xsl:template name="chunk-element-content">
    <xsl:param name="prev"/>
    <xsl:param name="next"/>
    <xsl:param name="nav.context"/>
    <xsl:param name="content">
      <xsl:apply-imports/>
    </xsl:param>

    <xsl:call-template name="user.preroot"/>

    <html>
      <xsl:call-template name="html.head">
        <xsl:with-param name="prev" select="$prev"/>
        <xsl:with-param name="next" select="$next"/>
      </xsl:call-template>

      <body>
        <xsl:call-template name="body.attributes"/>
        <xsl:call-template name="user.header.navigation"/>

        <xsl:call-template name="header.navigation">
          <xsl:with-param name="prev" select="$prev"/>
          <xsl:with-param name="next" select="$next"/>
          <xsl:with-param name="nav.context" select="$nav.context"/>
        </xsl:call-template>
        
        <div id="book-content">
          <div id="book-content-inner">
            <div id="book-content-inner2">
            <xsl:call-template name="user.header.content"/>
            <xsl:copy-of select="$content"/>
            <xsl:call-template name="user.footer.content"/>
            </div>
          </div>
        </div>

        <xsl:call-template name="footer.navigation">
          <xsl:with-param name="prev" select="$prev"/>
          <xsl:with-param name="next" select="$next"/>
          <xsl:with-param name="nav.context" select="$nav.context"/>
        </xsl:call-template>

        <xsl:call-template name="user.footer.navigation"/>
      </body>
    </html>
    <xsl:value-of select="$chunk.append"/>
  </xsl:template>
  
  <!-- Needed so we don't see some weird characters in the output -->
  <xsl:template name="user.head.content">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  </xsl:template>
  
  <!-- Add the same footer we are using in the web site -->
  <xsl:template name="user.footer.navigation">
    <div id="footer">
      copyright &#169; 2008 (<span lang="en-gb">gallio.org</span>).
    </div>
  </xsl:template>
  
  <!-- Add the same top navigation bar we are using in the web site -->
  <xsl:template name="user.header.navigation">
    <div id="topnav">
      <ul>
        <li>◄</li>
        <li>
          <a href="Default.aspx">homepage</a>
        </li>
        <li>
          <a href="http://code.google.com/p/mb-unit/">code</a>
        </li>
        <li>
          <a href="http://ccnet.gallio.org/">builds</a>
        </li>
        <li>
          <a href="http://code.google.com/p/mb-unit/w/list">wiki</a>
        </li>
        <li>
          <a href="http://code.google.com/p/mb-unit/issues/list">issues</a>
        </li>
        <li>
          <a href="http://groups.google.com/group/gallio-dev?lnk=li">gallio-dev</a>
        </li>
        <li style=" float: right; padding-right: 30px;">
          <a href='/LogIn.aspx'>login</a>
        </li>
      </ul>
    </div>    
  </xsl:template>
  
  <!-- Syntax Highlighting -->
  <xsl:template match="d:programlisting|d:screen|d:synopsis">
    <div class="code-listing">
      <div class="code-listing-label">
      <span>
        <xsl:choose>
          <xsl:when test="@language='vb'">
            VB
          </xsl:when>
          <xsl:when test="@language='cs'">
            C#
          </xsl:when>
        </xsl:choose>
      </span>
      </div>
      <xsl:apply-imports />      
    </div>
  </xsl:template>
  
  <xsl:template match='xslthl:keyword'>
    <span style="color: blue;"><xsl:value-of select='.'/></span>
  </xsl:template>

  <xsl:template match='xslthl:string'>
    <span style="color: red;"><xsl:value-of select='.'/></span>  
  </xsl:template>

  <xsl:template match='xslthl:comment'>
    <span style="color: green;"><xsl:value-of select='.'/></span>
  </xsl:template>

</xsl:stylesheet>
