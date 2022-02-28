<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
  <xsl:output method="html" indent="yes" encoding="utf-8"/>

  <xsl:template match="эллипс">
    <ellipse>
      <xsl:attribute name="id"> <xsl:value-of select="@id"/> </xsl:attribute>
      <xsl:attribute name="cx"> <xsl:value-of select="@cx"/> </xsl:attribute>
      <xsl:attribute name="cy"> <xsl:value-of select="@cy"/> </xsl:attribute>
      <xsl:attribute name="rx"> <xsl:value-of select="@rx"/> </xsl:attribute>
      <xsl:attribute name="ry"> <xsl:value-of select="@ry"/> </xsl:attribute>

      <xsl:attribute name="style">
        fill:<xsl:value-of select="@заливка"/>;
        stroke:<xsl:value-of select="@ободок"/>;
        stroke-width:<xsl:value-of select="@ширина-ободка"/>;
      </xsl:attribute>
    </ellipse>
  </xsl:template>

  <xsl:template match="графика">
    <svg>
      <xsl:attribute name="width"> <xsl:value-of select="@ширина"/> </xsl:attribute>
      <xsl:attribute name="height"> <xsl:value-of select="@высота"/> </xsl:attribute>
      <xsl:apply-templates/>
    </svg>
  </xsl:template>

  <xsl:template match="/root">
    <html lang="en">
      <head>
        <title> SVG </title>
      </head>
      <body>
        <xsl:apply-templates/>
        <h4 id="author" title="GossJS" class="col text-center">Айнур Рахманов</h4>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
