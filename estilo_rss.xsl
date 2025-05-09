<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="rss/channel/title"/></title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
            padding: 20px;
          }
          .container {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            max-width: 600px;
            margin: auto;
          }
          h1 {
            color: #2c3e50;
            font-size: 24px;
            margin-bottom: 10px;
          }
          p {
            font-size: 16px;
            margin-bottom: 20px;
          }
          a {
            color: #2a7ae2;
            text-decoration: none;
            display: block;
            margin: 8px 0;
            font-size: 16px;
          }
        </style>
      </head>
      <body>
        <div class="container">
          <h1><xsl:value-of select="rss/channel/title"/></h1>
          <p>Explora nuestros últimos artículos:</p>
          <xsl:for-each select="rss/channel/item">
            <a>
              <xsl:attribute name="href">
                <xsl:value-of select="link"/>
              </xsl:attribute>
              <xsl:value-of select="title"/>
            </a>
          </xsl:for-each>
          <br/>
          <a href="canal_rss_gamerzone.xml">Ver fuente RSS</a>
        </div>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
