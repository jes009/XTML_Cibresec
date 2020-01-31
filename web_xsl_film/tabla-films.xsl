<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
<html>
<body>
 <h1>Titulos de Peliculas:</h1>
  <table>
   <tr>
   	<th>Titulo</th>
	<th>Imagenes</th>
   </tr>
   <tr>
   	<xsl:apply-templates/>
   </tr>
  </table>
</body>
</html>
</xsl:template>

<xsl:apply-templates select="titol">
<xsl:sort select="titol"/>
	<td><xsl:value-of select="."/></td>
</xsl:apply-templates>
	
<xsl:apply-templates select="imatge">
<xsl:sort select="imatge"/>
<td>
 <img>
    <xsl:attribute name="./img">
      <xsl:value-of select="."/>
    </xsl:attribute>
 </img>
</td>
</xsl:apply-templates>
	
</xsl:stylesheet>
