function showLevel2(moduleChosen,subdiv2) {
			var newboxes = document.getElementsByTagName("div");
            for(var x=0; x<newboxes.length; x++) {
                  name = newboxes[x].getAttribute("name");
                  if (name == subdiv2) {
						//alert("1");
                        if (newboxes[x].id == moduleChosen) {
                       	    newboxes[x].style.display = 'block';
							//alert("2");
							
                  		}
                  		else {
                       		  newboxes[x].style.display = 'none';
							 //alert("3");
                 	    }
				  	
                  }
				  
            }
			var linkList=document.getElementsByTagName("a");
			for (i=0;i<linkList.length;i++ )
			{
				
				linkList[i].className="";
			}
			document.getElementById(moduleChosen).className="Highlight1";
	 		
} 
	
function showSubDiv1(subdiv1, switchTextDiv,switchTextShow,switchTextHide,subdiv2,subdiv3) {
			 var ele = document.getElementById(subdiv1);
			 var text = document.getElementById(switchTextDiv);
			 if(ele.style.display == "block") {
			 					   var newboxes = document.getElementsByTagName("div");
            					   for(var x=0; x<newboxes.length; x++) {
                 				   		   name = newboxes[x].getAttribute("name");
                  				   		   if (name == subdiv2 ||name == subdiv3) {
                        		  		      newboxes[x].style.display = 'none';
										   }
								   }
    		 					   ele.style.display = "none";
								   text.innerHTML = switchTextShow;
  			 }
	 		  
				   text.innerHTML = switchTextHide;
 }
 
	
function showSubDiv2(moduleChosen,subdiv2,subdiv3,divpackages,divclasses) {
	//alert("1");
      var newboxes = document.getElementsByTagName("div");
            for(var x=0; x<newboxes.length; x++) {
                  name = newboxes[x].getAttribute("name");
                  if (name == subdiv2) {
						//alert(newboxes[x].id);
                        if (newboxes[x].id == moduleChosen) {
                       	    newboxes[x].style.display = 'block';
							//alert("2");
							
                  		}
                  		else {
                       		  newboxes[x].style.display = 'none';
							  //alert("3");
                 	    }
				  	
                  }
				  if(name == subdiv3){
				  		  newboxes[x].style.display = 'none';
						 //alert("4");
						  
				  }
            }
			var linkList=document.getElementById(divpackages).getElementsByTagName("a");
			for (i=0;i<linkList.length;i++ )
			{
				
				linkList[i].className="";
			}
			var linkList1=document.getElementById(divclasses).getElementsByTagName("a");
			for (i=0;i<linkList1.length;i++ )
			{
				
				linkList1[i].className="";
			}
			document.getElementById(moduleChosen).className="Highlight1";
			
	  
     }

function showSubDiv3(moduleChosen,subdiv3,divclasses) {
      var newboxes = document.getElementsByTagName("div");
            for(var x=0; x<newboxes.length; x++) {
                  name = newboxes[x].getAttribute("name");
                  if (name == subdiv3) {
                        if (newboxes[x].id == moduleChosen) {
							newboxes[x].style.display = 'block';
						}
						else {
							newboxes[x].style.display = 'none';
						}
				  }
			}
			var linkList=document.getElementById(divclasses).getElementsByTagName("a");
			for (i=0;i<linkList.length;i++ )
			{
				
				linkList[i].className="";
			}
			
			document.getElementById(moduleChosen).className="Highlight1";
	  
}

function showLevel1Div(topModifierDiv, switchTextDiv,switchTextShow,switchTextHide,pkgAuthorDiv,autherPkgClassDiv,autherPkgClassRevDiv) {			 
			 var ele = document.getElementById(topModifierDiv);
			 var text = document.getElementById(switchTextDiv);
			 if(ele.style.display == "block") {
			 					   var newboxes = document.getElementsByTagName("div");
            					   for(var x=0; x<newboxes.length; x++) {
                 				   		   name = newboxes[x].getAttribute("name");
                  				   		   if (name == pkgAuthorDiv ||name == autherPkgClassDiv||name == autherPkgClassRevDiv||name == "images") {
                        		  		      newboxes[x].style.display = 'none';
										   }
								   }
    		 					   ele.style.display = "none";
								   text.innerHTML = switchTextShow;
  			 }
	 		  else {
			  	   ele.style.display = "block";
				   text.innerHTML = switchTextHide;
			 }
		document.getElementById('textAreaFile').style.display = "none";	 
    } 
	
function showLevel2Div(moduleChosen,level2Div,level3Div, level4Div, divauthors, divpackages, divclasses) {
      var newboxes = document.getElementsByTagName("div");
            for(var x=0; x<newboxes.length; x++) {
                  name = newboxes[x].getAttribute("name");
                  if (name == level2Div) {
                        if (newboxes[x].id == moduleChosen) {
                       	    newboxes[x].style.display = 'block';
                  		}
                  		else {
                       		  newboxes[x].style.display = 'none';
                 	    }
				  	
                  }
				  if(name == level3Div || name == level4Div){
				  		  newboxes[x].style.display = 'none';
				  }
            }
			var linkList=document.getElementById(divauthors).getElementsByTagName("a");
			for (i=0;i<linkList.length;i++ )
			{
				
				linkList[i].className="";
			}
			var linkList1=document.getElementById(divpackages).getElementsByTagName("a");
			for (i=0;i<linkList1.length;i++ )
			{
				
				linkList1[i].className="";
			}
			var linkList2=document.getElementById(divclasses).getElementsByTagName("a");
			for (i=0;i<linkList2.length;i++ )
			{
				
				linkList2[i].className="";
			}
			document.getElementById(moduleChosen).className="Highlight1";
			document.getElementById('textAreaFile').style.display = "none";	
	  
     }

function showLevel3Div(moduleChosen,level3Div,level4Div,divpackages,divclasses) {
      var newboxes = document.getElementsByTagName("div");
            for(var x=0; x<newboxes.length; x++) {
                  name = newboxes[x].getAttribute("name");
                  if (name == level3Div) {
						
                        if (newboxes[x].id == moduleChosen) {
                       	    newboxes[x].style.display = 'block';
                  		}
                  		else {
                       		  newboxes[x].style.display = 'none';
							
                 	    }
				  	
                  }
				  if(name == level4Div){
						
				  		  newboxes[x].style.display = 'none';
				  }
            }
			var linkList=document.getElementById(divpackages).getElementsByTagName("a");
			for (i=0;i<linkList.length;i++ )
			{
				
				linkList[i].className="";
			}
			var linkList1=document.getElementById(divclasses).getElementsByTagName("a");
			for (i=0;i<linkList1.length;i++ )
			{
				
				linkList1[i].className="";
			}			
			document.getElementById(moduleChosen).className="Highlight1";
			//document.getElementById('textAreaFile').style.display = "none";	
}

function showLevel4Div(moduleChosen,level4Div, divclasses) {
      //alert(divclasses);
	  //alert(level4Div);
	  var newboxes = document.getElementsByTagName("div");
            for(var x=0; x<newboxes.length; x++) {
                  name = newboxes[x].getAttribute("name");
                  if (name == level4Div) {
						
                        if (newboxes[x].id == moduleChosen) {
                        newboxes[x].style.display = 'block';
					
						}
						else {
                        newboxes[x].style.display = 'none';
						
						}
				}
				
			}
			
			var linkList1=document.getElementById(divclasses).getElementsByTagName("a");
			//alert(divclasses);
			for (i=0;i<linkList1.length;i++ )
			{
				//alert("1");
				linkList1[i].className="";
			}
			document.getElementById(moduleChosen).className="Highlight1";
			//document.getElementById('textAreaFile').style.display = "none";	
}
function showSubDiv1His(subdiv1, switchTextDiv,switchTextShow,switchTextHide) {
			 var ele = document.getElementById(subdiv1);
			 var text = document.getElementById(switchTextDiv);
			 if(ele.style.display == "block") {
			 	ele.style.display = "none";
				text.innerHTML = switchTextShow;
  			 }
	 		  else {
			  	   ele.style.display = "block";
				   text.innerHTML = switchTextHide;
			 }
}
 
function showImage(imagecnt, totalpkg){

         for(var x=1; x<=totalpkg; x++) {
                 var ele = document.getElementById(x);
                 if(x==imagecnt){
                   ele.style.display = "block";
                 }else{
                   ele.style.display = "none";
                 }
         }
}

function showSelectedDashboard(selectedDiv, linkChosen) {
         
         var ele = document.getElementById(selectedDiv);

         var newboxes = document.getElementsByTagName("div");
         for(var x=0; x<newboxes.length; x++) {
                 name = newboxes[x].getAttribute("name");
                 if (name == selectedDiv){
 		      newboxes[x].style.display = 'block';
                }
                else{
                    newboxes[x].style.display = 'none';
                }
         }
         var newlinks = document.getElementsByTagName("a");
         for (i=0;i<newlinks.length;i++ )
         {
             newlinks[i].className="";
         }
         document.getElementById(linkChosen).className="LinkAFSelect";
		 document.getElementById("dashLink").value=linkChosen;
		 doNotshowCompositeGraphs('compositegraph', 'Show Composite Graphs','Hide Composite Graphs','compograph');

}

function showCompositeGraphs(id,switchTextShow,switchTextHide,textId) {
	var ele = document.getElementById(id);
	var text = document.getElementById(textId);
	if(ele.style.display == "block") {
		document.getElementById(id).style.display = 'none';
		text.innerHTML = switchTextShow;

		
	}
	else 
	{
		document.getElementById(id).style.display = 'block';
		text.innerHTML = switchTextHide;
	}

}

function doNotshowCompositeGraphs(id,switchTextShow,switchTextHide,textId) {
	//alert("reached this function");
	var ele = document.getElementById(id);
	var text = document.getElementById(textId);
	if(ele!=null && text!=null){
		document.getElementById(id).style.display = 'none';
		text.innerHTML = "Show Composite Graphs";
	}
	

}
function loaddashboard(){
	//	alert ("hello");
		if (document.all&&window.attachEvent) 
		{ // IE-Win
		//	alert ("it is IE");
			window.attachEvent("onload", loaddashboard1);
		}
		else if (window.addEventListener) { // Others
			window.addEventListener("load",loaddashboard1,false);
		}
	
		
}
function loaddashboard1(){
	var clickLink= document.getElementById("dashLink").value;
	var clickLink2= document.getElementById("dashLink2").value;
	if(document.getElementById(clickLink)!=null){
        document.getElementById(clickLink).click();
    }
	else if(document.getElementById(clickLink2)!=null){
		document.getElementById(clickLink2).click();
	}
	
	else 
	{                             
        document.getElementById("show6").click();
    }


}

function openfile1(filename){
	alert(filename);
	if (window.File && window.FileReader && window.FileList && window.Blob) {
  // Great success! All the File APIs are supported.
} else {
  alert('The File APIs are not fully supported in this browser.');
}

	var ForReading = 1, ForWriting = 2, ForAppending = 8; 
	var objFSO = new ActiveXObject("Scripting.FileSystemObject"); 
	alert("hello1");
	objFile = objFSO.GetFile(filename.value); 
	alert("hello2");
	objStream = objFile.OpenAsTextStream(ForReading); 
	document.getElementById('ta1').value = objStream.ReadAll(); 
	objStream.Close(); 
	objStream= null; 
	//fileSpecs(div, btn); 
	objFile = null; 
	return true;
	
	
}
function openfile(fileContents,highText,health,idHighlight,foundDetails,lineContentSub){
	//alert(fileContents);
	//alert(highText);
	//var fc=fileContents.replace(fileContents,"<br>","\n");
	//document.getElementById('ta1').value = fileContents;
	//document.getElementById('textAreaFile').innerHTML=fileContents;
	
	var highlight;
	var inputText=document.getElementById('textAreaFile');
	inputText.style.display = 'block';
	inputText.innerHTML=fileContents;
	
	//alert("input text"+inputText);
	var innerHTML = inputText.innerHTML;
	//alert("inner text"+innerHTML);*/
	var index = innerHTML.indexOf(highText);
	if (health=='G'){
		highlight='HighlightG';
	}
	if (health=='R'){
		highlight='HighlightR';
	}
	if (health=='A'){
		highlight='HighlightA';
	}
	if (health==''){
		highlight='HighlightA';
	}
	if ( index >= 0 )     {
		alert("found the string");
		innerHTML = innerHTML.substring(0,index) +"<a name="+lineContentSub+">"+ "<span class="+highlight+">" + innerHTML.substring(index,index+highText.length) + "</span>" +"</a>" +innerHTML.substring(index + highText.length);         
		inputText.innerHTML = innerHTML;  
	} 
	
	//window.location.hash = '#textAreaFile';
	document.getElementById('textAreaFile').focus();
	var linkList1=document.getElementById(foundDetails).getElementsByTagName("a");
		//alert(divclasses);
		for (i=0;i<linkList1.length;i++ )
		{
			linkList1[i].className="";
		}
	
	document.getElementById(idHighlight).className="Highlight1";
	
	return false;
	
	
}
function openwindow(fileName)
 {
 window.open(fileName, 'ApexRules', 'width=800,height=600,scrollbars=yes');
 }