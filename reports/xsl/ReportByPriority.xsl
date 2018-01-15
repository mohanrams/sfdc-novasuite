<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html lang="en">
  <head>
  <SCRIPT LANGUAGE="JavaScript" SRC="js/hycloud.js">
  </SCRIPT>
  <title>Nova Cop -Rule Violation Reports</title>
  <link rel="stylesheet" type="text/css" href="css/hycloud.css" />
  </head>

  <body>
  <img src="images/header.png" width="100%"></img>
  <br/>
  <br/>
  <p align="left"><a  href="javascript:history.go(-1)"><img src="images/back.png"/></a></p>
  <p align="right"> <a href="javascript:openwindow('ApexRules.html')">[Help on Apex Rules] </a></p>
  <table class="tableWithBorder">
    <tr class ="th1">  
		
		<th class="tdRightBottomC">Run Date</th>	    
    </tr>
    
    <tr class="tr0">    
		
		<td class="tdRightBottomC">
		 <xsl:value-of select="concat('Date:',substring(current-dateTime(), 9, 2),'/',substring(current-dateTime(), 6, 2),'/',substring(current-dateTime(), 1, 4),' Time:',substring(current-dateTime(), 12,8))"/>
		</td>
    </tr>
   
	</table>
	<br/> 
	<table width="100%" border="0">
	<tr>

  <td>




  <div name ="priorities" id="priorities" style="display: block">
  <table class="tableWithBorder">
    <tr class="th1">
      <th class="tdRightBottom">Priority</th>
	  <th class="tdRightBottom">Count</th>
	 </tr>
    <xsl:for-each-group select="novacop/file/violation" group-by="@priority">
		<xsl:sort select="current-grouping-key()" />
		<tr class="tr{position() mod 2}">
		  <td class="tdRightBottom"><a  id="{current-grouping-key()}" title="{descr}" href="javascript:showLevel2Div('{current-grouping-key()}','violations','files','lines','priorities','topviolations','topfiles');" ><xsl:value-of select="current-grouping-key()"/></a></td>
		  <td class="tdRightBottom"><xsl:value-of select="count(current-group())" /></td>
		</tr>
	</xsl:for-each-group>
  </table>
  </div>

  </td>

 </tr>
 <tr>

  <td>

  <div id ="topviolations" >
	<xsl:for-each-group select="novacop/file/violation" group-by="@priority">
		<xsl:variable name="priorityName"><xsl:value-of select="current-grouping-key()"/></xsl:variable>
		<div name ="violations" id="{current-grouping-key()}" style="display: none">
	
    
			<table class="tableWithBorder">
				<tr class="th1">
				  <th class="tdRightBottom">Violation</th>
				  <th class="tdRightBottom">Count</th>
				  <th class="tdRightBottom">Description</th>
				  <th class="tdRightBottom">Governor Limit</th>
				  <th class="tdRightBottom">Ruleset</th>
				 </tr>
				
				<xsl:for-each-group select="current-group()" group-by="@rule">
				<xsl:sort select="current-grouping-key()" />
				<tr class="tr{position() mod 2}">
				  <td class="tdRightBottom"><a  id="{$priorityName}.{current-grouping-key()}" title="{descr}" href="javascript:showLevel3Div('{$priorityName}.{current-grouping-key()}','files','lines','topviolations','topfiles');" ><xsl:value-of select="current-grouping-key()"/></a></td>
				  <td class="tdRightBottom"><xsl:value-of select="count(current-group())" /></td>
				  <td class="tdRightBottom"><xsl:value-of select="descr"/></td>
				  <td class="tdRightBottom"><xsl:value-of select="@governerLimit"/></td>
				  <td class="tdRightBottom"><xsl:value-of select="@ruleset"/></td>
				</tr>
				</xsl:for-each-group>
			</table>
		</div>
	</xsl:for-each-group>
	</div>
 
  </td>

 </tr>
<tr><td height="4px"></td></tr>
 <tr>

  <td>

  <div id="topfiles">
  <xsl:for-each-group select="novacop/file/violation" group-by="@priority">
  <xsl:variable name="priorityName"><xsl:value-of select="current-grouping-key()"/></xsl:variable>
  <xsl:for-each-group select="current-group()" group-by="@rule">
  <xsl:variable name="ruleName"><xsl:value-of select="current-grouping-key()"/></xsl:variable>
  <div name ="files" id="{$priorityName}.{$ruleName}" style="display: none">
   
  <table class="tableWithBorder">
  <tr class="th1">
  	  <th class="tdRightBottom">File Name</th>
	  <th class="tdRightBottom">Count</th>
  </tr>
  
  <xsl:for-each-group select="current-group()" group-by="@class">
		<xsl:sort select="current-grouping-key()" />

	
	   <tr class="tr{position() mod 2}">
		  <td class="tdRightBottom"><a id="{current-grouping-key()}.{$ruleName}.{$priorityName}"  href="javascript:showLevel4Div('{current-grouping-key()}.{$ruleName}.{$priorityName}','lines','topfiles');"><xsl:value-of select="../@name"/></a></td>
		   <td class="tdRightBottom"><xsl:value-of select="count(current-group())" /></td>
	   </tr>
  
  </xsl:for-each-group>
  </table>
  </div>  
  </xsl:for-each-group>
  </xsl:for-each-group>
  </div>
  </td>

  </tr>
<tr><td height="4px"></td></tr>
  <tr>

<td>

  <xsl:for-each-group select="novacop/file/violation" group-by="@priority">
  <xsl:variable name="priorityName"><xsl:value-of select="current-grouping-key()"/></xsl:variable>
  <xsl:for-each-group select="current-group()" group-by="@rule">
   <xsl:variable name="ruleName"><xsl:value-of select="current-grouping-key()"/></xsl:variable>
  <xsl:for-each-group select="current-group()" group-by="@class">
	
  <div name ="lines" id="{current-grouping-key()}.{$ruleName}.{$priorityName}" style="display: none">
  
  <table class="tableWithBorder">
  <tr class="th1">
  	  <th class="tdRightBottom">Line Numbers</th>
	  	  
  </tr>
  
   <xsl:for-each select="current-group()">
	 <xsl:sort select="@lineno" data-type="number" order="ascending"/>
   
   <tr class="tr{position() mod 2}">
	 
      <td class="tdRightBottom"><xsl:value-of select="@lineno"/></td>
             
   </tr>  
  </xsl:for-each>
  </table>
  </div>
  </xsl:for-each-group>
  </xsl:for-each-group>
  </xsl:for-each-group>
  </td>
  </tr>
  </table>
  <br/>
  <xsl:if test="unparsed-text-available('errors.xml', 'iso-8859-1')">
	<p align="right"> <a href="javascript:openwindow('errors.html')">[Files with parsing errors] </a></p>
  </xsl:if>

  
    <img src="images/footer.png" width="100%" ></img>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
