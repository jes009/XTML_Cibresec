<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/films">
<html>
<body>
 <h2>Titulos de Peliculas:</h2>
  <table border="1">
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
 <td>
  <xsl:value-of select="."/>
 </td>
</xsl:template>

<xsl:template match="imagen">
<td>
	<img>
         <xsl:attribute name="src">
            <xsl:value-of select="."/>
         </xsl:attribute>
        </img>
</td>
</xsl:template>

</xsl:stylesheet>

