function  starRatingDetail()
		{
			
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
			
			st=document.getElementsByName("stars").value;
			bd=document.getElementById("book-id").value;
			var url="starRating.jsp?stars="+st+"&book-id="+bd;
			alert(url);
			
			xmlHttp.onreadystatechange =change;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		
	