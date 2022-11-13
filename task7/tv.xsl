<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" />
  <xsl:template match="/">
    <html>
      <head>
        <title>XSL sample</title>
      </head>
      <body>
        <div style="position: fixed; top: 16px; right: 16px; padding: 16px; border: 1px solid black; background: white;">
          <xsl:for-each select="TVGrid/Event/Date[not(../preceding-sibling::Event/Date = .)]">
            <div>
              <xsl:element name="a">
                <xsl:attribute name="href">
                  <xsl:value-of select="concat('#date_', .)"/>
                </xsl:attribute>
                <xsl:value-of select="."/>
              </xsl:element>
            </div>
          </xsl:for-each>            
        </div>
        <div>
          <xsl:for-each select="TVGrid/Event">
            <xsl:if test="preceding-sibling::Event[1]/Date != Date or position() = 1">
              <xsl:element name="h2">
                <xsl:attribute name="id">
                  <xsl:value-of select="concat('date_', Date)"/>
                </xsl:attribute>
                <xsl:value-of select="Date"/>
              </xsl:element>
            </xsl:if>
            <div style="margin-left: 16px; width:calc(100% - 200px);">
              <h4 style="margin-bottom: 4px;">
                <xsl:value-of select="Title" />
              </h4>
              <div>
                <xsl:value-of select="concat('Дата: ', Date)" />
              </div>
              <div>
                <xsl:value-of select="concat('Начало: ', Start)" />
              </div>
              <div>
                <xsl:value-of select="Info" />
              </div>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
