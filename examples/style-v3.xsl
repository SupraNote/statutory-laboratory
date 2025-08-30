<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:template match="/">
    <html>
      <head>
        <title>
          <xsl:value-of select="header/version" />
          <xsl:apply-templates />
        </title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" media="screen" href="../../../style/stat-v1.css" />
        <link rel="next" href="v2.html" hreflang="en-US" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="../../scripts/show-diffs.js"></script>
        <script src="../../scripts/hide-diffs.js"></script>
      </head>
      <body class="StatutoryCodification">
        <header>
          <p class="version">
            <xsl:apply-templates select="version" />
          </p>
          
          <xsl:apply-templates select="amendedThrough" />
          <xsl:apply-templates select="effectiveDate" />
          <p class="buttons">
            <button class="show">Show diffs</button>
            <button class="hide">Hide diffs</button>
          </p>
        </header>
        <main>
          <xsl:apply-templates />
        </main>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="/">
    <html>
      <xsl:apply-templates />
    </html>  
  </xsl:template>



  <xsl:template match="header">
      <header>
        <xsl:apply-templates select="version" />
        <xsl:apply-templates select="amendedThrough" />
        <xsl:apply-templates select="effectiveDate" />
      </header>
  </xsl:template>

  <xsl:template match="version">
    <p style="text-align:center;" class="version">
      <xsl:value-of select="." />
    </p>
  </xsl:template>

  <xsl:template match="amendedThrough">
    <p class="amendedThrough">
      <xsl:value-of select="." />
    </p>
  </xsl:template>

  <xsl:template match="effectiveDate">
    <p class="effectiveDate">
      <xsl:value-of select="." />
    </p>
  </xsl:template>
  
  <xsl:template match="//heading">
    <h1>
      <xsl:apply-templates select="designatorValue" />
      <xsl:apply-templates select="catchline" />
    </h1>
  </xsl:template>

  <xsl:template match="designatorValue">
    <span class="designatorValue">
      <xsl:value-of select="." />
    </span>
  </xsl:template>
  <xsl:template match="catchline">
    <span class="catchline">
      <xsl:value-of select="." />
    </span>
  </xsl:template>

  <xsl:template match="version">
    <p class=""></p>
  </xsl:template>
</xsl:stylesheet>