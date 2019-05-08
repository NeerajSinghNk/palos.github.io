function  DeleteTit()
		{
			//alert("DeleteTit()");
			if (typeof XMLHttpRequest != "undefined")
			{
				xmlHttp= new XMLHttpRequest();

			}

			else if (window.ActiveXObject)
			{
				xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
		
			}
	
			if (xmlHttp==null)
			{
				alert ("Browser does not support XMLHTTP Request")
				return
			}
			
			btype=document.getElementById("book1").value;
			btId=document.getElementById("bid1").value;
			var url= "loadDeleteDataTable.jsp?book1="+btype+"&bid1="+btId;
			//alert(url);
			xmlHttp.onreadystatechange = deleteTitle;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function deleteTitle()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("up1");
				a.innerHTML=xmlHttp.responseText;
		
			}
		}



		