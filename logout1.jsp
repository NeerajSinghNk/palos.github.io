<%
			System.out.println("logout.jsp....");
			
			response.setHeader("Cache-Control", "no-cache");
			response.setHeader("Cache-Control", "no-store");
			response.setHeader("Pragma", "");
			response.setHeader("Expires", "no-cache");
			response.setDateHeader("Expires", -1);
			
			
			session.invalidate();
			response.sendRedirect("delar_register.jsp");
		%>
	
