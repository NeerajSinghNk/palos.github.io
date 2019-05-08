<%@page import="java.sql.*"%>

<%!
	String user;
	
%>

<%
	user=(String)session.getAttribute("user");
	
	if(user!=null)
	{
		String currentPassword=request.getParameter("current");
		String Newpass=request.getParameter("new");
		String conpass=request.getParameter("confirm");
		
		String pass="";
		int id=0;
		try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			
			Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
			
			Statement stmt=con.createStatement();
			
			ResultSet rs=stmt.executeQuery("select * from seller_register where Password='"+currentPassword+"'");
			
			while(rs.next())
			{
				id=rs.getInt("ID");
				pass=rs.getString("Password");
			} 
			System.out.println(id+ " "+pass);
			if(pass.equals(currentPassword))
			{
				Statement st1=con.createStatement();
				int i=st1.executeUpdate("update seller_register set Password='"+Newpass+"' where Shop_email='"+user+"'");
				session.setAttribute("id","**Password changed successfully");
				st1.close();
				con.close();
			}
			else{
			session.setAttribute("id","**Current Password May Be Incorrect");
			}
			response.sendRedirect("updatePassword.jsp");
		}
		catch(Exception e)
		{
			out.println(e);
		}
		
		
	}
	else{
		response.sendRedirect("delar_register.jsp");
	}
	
%>