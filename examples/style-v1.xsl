<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text" />
  <xsl:template match="/">
    <html>
      <head>
        <title>
          <xsl:value-of select="header/version" />
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
          <p class="version-number">
            <xsl:value-of select="header/version" />
          </p>
          <p class="amended-through">
            <xsl:value-of select="/header/amendedThrough" />
          </p>
          <p class="effective-date">
            <xsl:value-of select="/header/effectiveDate" />
          </p>
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
  
  <xsl:template match="//heading">
    <h1>
      <span class="designatorValue">
        <xsl:value-of select="designatorValue" />
      </span>
      <span class="catchline">
        <xsl:apply-templates select="catchline" />
      </span>
    </h1>
  </xsl:template>
</xsl:stylesheet>