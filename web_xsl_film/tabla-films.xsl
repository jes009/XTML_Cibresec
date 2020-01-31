<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/films/film">
<html>
<body>
  <head>
   <link rel="stylesheet" href="./css/style.css"> 
  <title>Tabla de imagenes peliculas</title>
</head>
 <h2>Titulos de Peliculas:</h2>
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

<xsl:template>
 <xsl:apply-templates select="titol"/>
 <xsl:apply-templates select="imagen"/>
</xsl:template>
	
<xsl:template match="titol">
	<td><xsl:value-of select="."/></td>	
</xsl:template>
	
<xsl:template match="imagen">
<td>
	<xsl:element name="img">
         <xsl:attribute name="src">
            <xsl:value-of select="./img/."/>
         </xsl:attribute>
        </xsl:element>
</td>
</xsl:template>

</xsl:stylesheet>

