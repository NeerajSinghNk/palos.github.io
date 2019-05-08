function  funAjax2(a)
		{
			//alert("hello");
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
			
			
			var url= "BookContact.jsp?book="+a;
			//alert(url);
			xmlHttp.onreadystatechange = xyz;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function xyz()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
				//alert("contactBook.js");
				a=document.getElementById("bid");
				a.innerHTML=xmlHttp.responseText;
		
			}
		}



		