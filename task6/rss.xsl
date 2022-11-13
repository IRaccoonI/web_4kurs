<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" />
  <xsl:template match="/rss">
    <html>
      <head>
        <title>XSL sample</title>
      </head>
      <body>
        <xsl:for-each select="channel/item">   
          <div style="margin-bottom: 16px;">
            <h2>
              <xsl:value-of select="title"/>
            </h2>
            <small>
              <xsl:value-of select="pubDate"/>
            </small>
            <div>
              <xsl:value-of select="description"/>
            </div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>