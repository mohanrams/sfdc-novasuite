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
		
		<td class="tdRightBottomC"><xsl:value-of select="concat('Date:',substring(current-dateTime(), 9, 2),'/',substring(current-dateTime(), 6, 2),'/',substring(current-dateTime(), 1, 4),' Time:',substring(current-dateTime(), 12,8))"/></td>
    </tr>
   
   </table>
   <br/> 
  <table width="100%" border="0">
 <tr>
 <td>
 <table class="tableWithBorder">
    <tr class="th1">
      <th class="tdRightBottom">Total Violations</th>
      <th class="tdRightBottom">Priority 1</th>
	  <th class="tdRightBottom">Priority 2</th>
	  <th class="tdRightBottom">Priority 3</th>
	   <th class="tdRightBottom">Priority 4</th>
    </tr>
    <xsl:for-each select="novacop">
	
    <tr class="tr{position() mod 2}">
       <td class="tdRightBottom"><xsl:value-of select="count(file/violation)"/></td>
	   <td class="tdRightBottom"><xsl:value-of select="count(file/violation[@priority='P1'])"/></td>
	  <td class="tdRightBottom"><xsl:value-of select="count(file/violation[@priority='P2'])"/></td>
	  <td class="tdRightBottom"><xsl:value-of select="count(file/violation[@priority='P3'])"/></td>
	   <td class="tdRightBottom"><xsl:value-of select="count(file/violation[@priority='P4'])"/></td>
    </tr>
  </xsl:for-each>
  </table>
  </td>
  </tr>
 <tr>

  <td>

  <div name ="fileNames" id="fileNames" style="display: block">
  <table class="tableWithBorder">
    <tr class="th1">
      <th class="tdRightBottom">File Name</th>
      <th class="tdRightBottom">Violations</th>
	  <th class="tdRightBottom">Priority 1</th>
	  <th class="tdRightBottom">Priority 2</th>
	  <th class="tdRightBottom">Priority 3</th>
	   <th class="tdRightBottom">Priority 4</th>
    </tr>
    <xsl:for-each select="novacop/file">
	<xsl:sort select="@name" />
    <tr class="tr{position() mod 2}">
      <td class="tdRightBottom"><a  id="{violation/@class}" href="javascript:showSubDiv2('{violation/@class}','violations','lines','fileNames','topviolations');" ><xsl:value-of select="@name"/></a></td>
      <td class="tdRightBottom"><xsl:value-of select="count(violation)"/></td>
	   <td class="tdRightBottom"><xsl:value-of select="count(violation[@priority='P1'])"/></td>
	  <td class="tdRightBottom"><xsl:value-of select="count(violation[@priority='P2'])"/></td>
	  <td class="tdRightBottom"><xsl:value-of select="count(violation[@priority='P3'])"/></td>
	   <td class="tdRightBottom"><xsl:value-of select="count(violation[@priority='P4'])"/></td>
    </tr>
  </xsl:for-each>
  </table>
  </div>

  </td>

 </tr>
<tr><td height="4px"></td></tr>
 <tr>

  <td>

  <div id="topviolations">
  <xsl:for-each select="novacop/file">
 <xsl:variable name="fileName"><xsl:value-of select="violation/@class"/></xsl:variable>
  <div name ="violations" id="{violation/@class}" style="display: none">
   
  <table class="tableWithBorder">
  <tr class="th1">
  	  <th class="tdRightBottom">Violation</th>
	  <th class="tdRightBottom">Description</th>
	  <th class="tdRightBottom">RuleSet</th>
	  <th class="tdRightBottom">Count</th>
	  <th class="tdRightBottom">Priority</th>
	  
  </tr>
  
  <xsl:for-each-group select="violation" group-by="@rule">
		<xsl:sort select="current-grouping-key()" />

	
	   <tr class="tr{position() mod 2}">
		  <td class="tdRightBottom"><a id="{$fileName}.{@rule}" title="{descr}" href="javascript:showSubDiv3('{$fileName}.{@rule}','lines','topviolations');"><xsl:value-of select="@rule"/></a></td>
		  <td class="tdRightBottom"><xsl:value-of select="descr" /></td>
		  <td class="tdRightBottom"><xsl:value-of select="@ruleset"/></td>
		  <td class="tdRightBottom"><xsl:value-of select="count(current-group())" /></td>
		  <td class="tdRightBottom"><xsl:value-of select="@priority"/></td>
		</tr>
  
	</xsl:for-each-group>
  </table>
  </div>  
  </xsl:for-each>
  </div>
  </td>

  </tr>
<tr><td height="4px"></td></tr>
  <tr>

<td>


  <xsl:for-each select="novacop/file">
  <xsl:variable name="fileName"><xsl:value-of select="violation/@class"/></xsl:variable>
  <xsl:for-each-group select="violation" group-by="@rule">
	<xsl:sort select="current-grouping-key()" />
  
  
  <div name ="lines" id="{$fileName}.{@rule}" style="display: none">
  
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
  </xsl:for-each>
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
