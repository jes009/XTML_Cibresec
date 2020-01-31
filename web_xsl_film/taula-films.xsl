<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/films">
<html>

<head>
 <link rel="stylesheet" type="text/css" href="style.css" media="screen"/>
 <title>Actividad Plantillas en FILMS Tabla y CSS</title>
 <h1>Actividad Plantillas en FILMS Tabla y CSS</h1>
</head>

<body>
 <h3>Cartelera de Peliculas</h3>
  <table>
   <tr>
   	<th>Titulo</th>
	<th>Imagenes</th>
   </tr>
   	<xsl:apply-templates/>
  </table>

</body>
</html>
</xsl:template>
	
<xsl:template match="film">
<tr>
<xsl:apply-templates select="titol"/>
<xsl:apply-templates select="imagen"/>
</tr>
</xsl:template>

<xsl:template match="titol">
 <td class="title">
  <xsl:value-of select="."/>
 </td>
</xsl:template>

<xsl:template match="imagen">
<td class="img">
	<img>
         <xsl:attribute name="src">
            <xsl:value-of select="."/>
         </xsl:attribute>
        </img>
</td>
</xsl:template>

</xsl:stylesheet>

