<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xslthl="http://xslthl.sf.net"
		xmlns:fo="http://www.w3.org/1999/XSL/Format"
                exclude-result-prefixes="xslthl"
                version="1.0">
  
  <xsl:import href='../../tools/docbook-xsl-ns/fo/docbook.xsl'/>

  <xsl:param name="highlight.source" select="1"/>

  <xsl:template match='xslthl:keyword'>
    <fo:inline color="blue"><xsl:value-of select="."/></fo:inline>
  </xsl:template>

  <xsl:template match='xslthl:string'>
    <fo:inline color="red"><xsl:value-of select="."/></fo:inline>
  </xsl:template>

  <xsl:template match='xslthl:comment'>
    <fo:inline color="green"><xsl:value-of select="."/></fo:inline>
  </xsl:template>
</xsl:stylesheet>
