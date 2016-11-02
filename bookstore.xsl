<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <h2>Bookstore</h2>
    <table border="1">
      <tr bgcolor="green">
        <th style="text-align:left">Title</th>
        <th style="text-align:left">Author</th>
        <th style="text-align:left">Year</th>
        <th style="text-align:left">Price</th>
      </tr>
      <xsl:for-each select="/bookstore/book[position() &lt; 3]">
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="author"/></td>
        <td><xsl:value-of select="year"/></td>
        <td><xsl:value-of select="price"/></td>
      </tr>
      </xsl:for-each>
    </table>
</xsl:template>
</xsl:stylesheet>