<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
  <xsl:output method="html" indent="yes" encoding="utf-8"/>

  <xsl:template match="корень">
    <msqrt>
      <xsl:apply-templates/>
    </msqrt>
  </xsl:template>

  <xsl:template match="операнд">
    <mi>
      <xsl:value-of select="."/>
    </mi>
  </xsl:template>

  <xsl:template match="оператор">
    <mo>
      <xsl:value-of select="."/>
    </mo>
  </xsl:template>

  <xsl:template match="число">
    <mn>
      <xsl:value-of select="."/>
    </mn>
  </xsl:template>

  <xsl:template match="строка">
    <mrow>
      <xsl:apply-templates/>
    </mrow>
  </xsl:template>

  <xsl:template match="дробь">
    <mfrac>
      <xsl:apply-templates/>
    </mfrac>
  </xsl:template>

  <xsl:template match="низверх">
    <munderover>
      <xsl:apply-templates/>
    </munderover>
  </xsl:template>

  <xsl:template match="верх">
    <msup>
      <xsl:apply-templates/>
    </msup>
  </xsl:template>

  <xsl:template match="низ">
    <msub>
      <xsl:apply-templates/>
    </msub>
  </xsl:template>

  <xsl:template match="/">
    <html lang="en">
      <head>
        <title> XSL </title>
      </head>
      <body>
        <math display="block">
          <xsl:apply-templates/>
        </math>
        <h4 id="author" title="GossJS" class="col text-center">Айнур Рахманов</h4>
      </body>
      <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"/>
      <script id="MathJax-script" src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"/>
    </html>
  </xsl:template>
</xsl:stylesheet>
