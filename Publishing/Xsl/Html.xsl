<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xslthl="http://xslthl.sf.net"
                exclude-result-prefixes="xslthl"
                version="1.0">
  
  <xsl:import href='../docbook-xsl-ns/html/chunk.xsl'/>

  <xsl:param name="highlight.source" select="1"/>

  <xsl:template match='xslthl:keyword'>
    <font color='blue'><xsl:value-of select='.'/></font>
  </xsl:template>

  <xsl:template match='xslthl:string'>
    <font color='red'><xsl:value-of select='.'/></font>
  </xsl:template>

  <xsl:template match='xslthl:comment'>
    <font color='green'><xsl:value-of select='.'/></font>
  </xsl:template>

</xsl:stylesheet>
