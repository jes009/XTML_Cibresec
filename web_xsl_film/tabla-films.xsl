<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
<html>
<body>
 <h1>Titulos de Peliculas:</h1>
  <table border="1">
   <tr>
	<th>Titulo</th>
	<th>Titulo Original</th>
   </tr>
   <xsl:for-each select="films/film">
   <tr>
    	<td><xsl:value-of select="titol"/></td>
		<td><xsl:value-of select="titoloriginal"/></td>
   </tr>
   </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
