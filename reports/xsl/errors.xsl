<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html lang="en">
  <head>
  <SCRIPT LANGUAGE="JavaScript" SRC="js/hycloud.js">
  </SCRIPT>
  <title>Nova Cop -Unparsed Files</title>
  <link rel="stylesheet" type="text/css" href="css/hycloud.css" />
  </head>

  <body>
  <img src="images/header.png" width="100%"></img>
  <br/>
  <br/>
   <p align="left"><a  href="javascript:history.go(-1)"><img src="images/back.png"/></a></p>
  <table width="100%" border="0">
 	<tr>
		<td>
			<div name ="fileNames" id="fileNames" style="display: block">
				<table class="tableWithBorder">
					<tr class="th1">
						<th class="tdRightBottom">File Name</th>
					</tr>
					<xsl:for-each select="errors/file">
						<tr class="tr{position() mod 2}">
							<td class="tdRightBottom"><a  id="{@nameonly}" href="javascript:showLevel2('{@nameonly}','errors');" ><xsl:value-of select="@name"/></a></td>
						</tr>
					</xsl:for-each>
				</table>
			</div>
		</td>
	</tr>
	<tr><td height="4px"></td></tr>
	<tr>
		<td>
			
				
					<xsl:for-each select="errors/file">
						<div id="{@nameonly}" name="errors" style="display: none">
						<table class="tableWithBorder">
							<tr class="th1">
								<th class="tdRightBottom">Line Number</th>
								<th class="tdRightBottom">Description</th>
							</tr>
							<xsl:for-each select="error">
									
										<tr class="tr{position() mod 2}">
											<td class="tdRightBottom"><xsl:value-of select="@linenumber"/></td>
											<td class="tdRightBottom"><xsl:value-of select="@description" /></td>
										</tr>
									
							</xsl:for-each>
						</table>
						</div> 
					</xsl:for-each>
				
			
		</td>
	</tr>
	<tr><td height="4px"></td></tr>
   <table>
		<tr class="tr2">
			<td> Copyright 2013 Accenture. All Rights Reserved. Accenture Confidential. For Internal Use Only.</td>
		</tr>
   </table>
		<img src="images/footer.png" width="100%" ></img>
</table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
