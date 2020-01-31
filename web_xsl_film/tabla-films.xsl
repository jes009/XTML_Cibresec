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
    	<td><xsl:value-of select="titol"/></td>
	<td></td>
   </tr>
  </table>
</body>
</html>
</xsl:template>

<xsl:template match="titol">
 <td><xsl:value-of select="."/></td>
</xsl:stylesheet>
