<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="Alignment">
		<xsl:apply-templates/><span class="supsub"><sub>align-to=<xsl:apply-templates select="@alignment"/></sub><sup>id=<xsl:apply-templates select="@annotation_id"/></sup></span>
	</xsl:template>	
	
	<xsl:template match="DiscourseConnective">
		<b>
			<xsl:apply-templates/><sub><xsl:apply-templates select="@sense"/></sub>
		</b>
	</xsl:template>
	<xsl:template match="ParallelChunk">
		<tr>
			<td>
				<xsl:apply-templates select="en"/>
			</td>
			<td>
				<xsl:apply-templates select="fr"/>
			</td>
		</tr>
	</xsl:template>				

	<xsl:template match="/">
		<html>
			<head>
			  <link rel="stylesheet" href="styles.css"/>
			</head>
			<body>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th>English</th>
						<th>French</th>
					</tr>
					<xsl:for-each select="DOCUMENT/Speaker">
						<tr class="blank_row">
						    <td colspan="2"></td>
						</tr>
						<xsl:apply-templates/>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
