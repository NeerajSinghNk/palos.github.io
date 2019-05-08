<%@page import="java.sql.*"%>

<%
	String email=(String)request.getParameter("email_addy");
	
	String pwd=(String)request.getParameter("password");
	
	
	
	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		
		Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
		
		Statement stmt=con.createStatement();
		
		ResultSet rs=stmt.executeQuery("select * from coustomer_register where Email='"+email+"'");
		
		System.out.println(rs);
		
		int flag=0;
		int count=0;
		while(rs.next())
		{
			
			String mail=(String)rs.getString("Email");
			
			if((email.equals(mail)))
			{
				String pass=(String)rs.getString("Password");
				session.setAttribute("pass","Password-->"+pass);
			}
					
		}
		
		
		response.sendRedirect("forgotPassword.jsp");
		con.close();
	}
	catch(Exception ex)
	{
		out.println("Hello ERROR:"+ex);
	}

%>