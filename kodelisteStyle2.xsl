<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:xlink="http://www.w3.org/1999/xlink">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Kodeliste: <xsl:value-of select="/gml:id"/></title>
			</head>
			<body>
				<h3>Kodeliste: <xsl:value-of select="/gml:Dictionary/gml:name"/></h3>
				<xsl:if test="/gml:Dictionary/gml:description">
					<h1><xsl:value-of select="/gml:Dictionary/gml:description"/></h1>
				</xsl:if>
				<table border="1">
					<tr>
						<th bgcolor="#90EE90">
							<u>Navn</u>
						</th>
						<th width="10" bgcolor="#90EE90">
							<br/>
						</th>
						<th bgcolor="#90EE0">
							<u>Beskrivelse</u>
						</th>
					</tr>
					<xsl:for-each select="//gml:dictionaryEntry/gml:Definition">
						<xsl:sort select="gml:name[count(@codeSpace)=1]" data-type="number"/>
						<tr>
							<td valign="top">
								<xsl:value-of select="gml:name"/>
							</td>
							<td width="10">
							<br/>
							</td>
							<td valign="top">
								<xsl:value-of select="gml:description"/>
							</td>
						</tr>
					</xsl:for-each>  
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
