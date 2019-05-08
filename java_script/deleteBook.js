function deleteBookDetail()
		{
			//alert("upDetail");
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
			
			del=document.getElementById("book1").value;
			var url="showDeletionBookId.jsp?book1="+del;
			//alert(url);
			
			xmlHttp.onreadystatechange =change;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function change()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
				//alert("Division");
				a=document.getElementById("bid1");
				a.innerHTML=xmlHttp.responseText;
			}
		}