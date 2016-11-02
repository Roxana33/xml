<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <h2>My CD Collection</h2>
    <table border="1">
      <tr bgcolor="green">
        <th style="text-align:left">Title</th>
        <th style="text-align:left">Artist</th>
        <th style="text-align:left; background: #FFFFCC;">Year</th>
        
      </tr>
     <xsl:for-each select="catalog/cd">
     	<tr>
      <td><xsl:value-of select="title"/></td>
      <xsl:choose>
        <xsl:when test="price &gt; 10">
          <td bgcolor="#ff00ff">
          <xsl:value-of select="artist"/></td>
   
          <td><xsl:value-of select="year"/></td>
        </xsl:when>
        <xsl:otherwise>
          <td><xsl:value-of select="artist"/></td>
          <td><xsl:value-of select="year"/></td>
        </xsl:otherwise>
      </xsl:choose>
    </tr>
    </xsl:for-each>
    </table>
</xsl:template>
</xsl:stylesheet>

