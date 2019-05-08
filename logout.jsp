
<meta http-equiv="expires" content="now">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">

		<%
			System.out.println("logout.jsp....");
			
			response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
			response.setHeader("Pragma", "no-cache"); //HTTP 1.0
			response.setDateHeader("Expires", 0); //prevents caching at the proxy server
					
			
			session.invalidate();
			response.sendRedirect("login_form.jsp");
		%>
	
