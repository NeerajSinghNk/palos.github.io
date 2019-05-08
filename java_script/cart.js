

function ready()
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
			
			
			
			book-id=document.getElementById("book-id").value;
			alert(book-id);
			
			alert("url");
			var url= "AddToCart.jsp?book-id="+book-id;
			alert(url);
			
			xmlHttp.onreadystatechange = cartChange;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function cartChange()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("addCart");
				a.innerHTML=xmlHttp.responseText;
		
			}
	
}