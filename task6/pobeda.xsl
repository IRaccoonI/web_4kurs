<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" />
  <xsl:template match="/">
    <html>
      <head>
        <title>XSL sample</title>
      </head>
      <body>
        <xsl:for-each select="generals/person">   
          <xsl:sort order="descending" select="votes" data-type="number"/>
          <xsl:if test="position() &lt;= 10">
            <div style="margin-bottom: 16px;">
              <xsl:apply-templates select="."/>
            </div>
          </xsl:if>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
