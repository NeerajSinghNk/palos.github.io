function  titltData()
		{
			//alert("titltAjax");
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
			
			btype=document.getElementById("book").value;
			btId=document.getElementById("bid").value;
			var url= "loadBookDetail.jsp?book="+btype+"&bid="+btId;
			//alert(url);
			xmlHttp.onreadystatechange = title;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function title()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("up");
				a.innerHTML=xmlHttp.responseText;
		
			}
		}



		