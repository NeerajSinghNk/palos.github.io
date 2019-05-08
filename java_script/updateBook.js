function  funAjax1(s)
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
			
			
			var url= "showBookId.jsp?book="+s;
			
			xmlHttp.onreadystatechange = xyz;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function xyz()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("bid");
				a.innerHTML=xmlHttp.responseText;
		
			}
		}



		function validation()
		{
			state=document.getElementById("state");
			city=document.getElementById("city");
			hotel=document.getElementById("hn");
		
			if(state.value=="select")
			{
				alert("Please select state...");
				state.focus();
				state.style.background="red";
				return false;
			}
			
			if(city.value=="select")
			{
				alert("Please select city...");
				city.focus();
				city.style.background="red";
				return false;
			}
			
			if(hotel.value=="")
			{
				alert("Please enter hotel...");
				hotel.focus();
				hotel.style.background="red";
				return false;
			}
			
			
			return true;
		
		}