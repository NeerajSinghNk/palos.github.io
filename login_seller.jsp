<%@page import="java.sql.*"%>


<%
	System.out.println("login_seller.jsp");
	String smail=(String)request.getParameter("semail");
	
	String spwd1=(String)request.getParameter("spassword");
	
	
	
	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		
		Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
		
		Statement stmt=con.createStatement();
		
		
		ResultSet rs=stmt.executeQuery("select * from seller_register where Shop_email='"+smail+"' and password='"+spwd1+"'");
		
		System.out.println(rs);
		
		int flag=0;
		int count=0;
		while(rs.next())
		{
			String state=(String)rs.getString("State");
			session.setAttribute("State",state);
			String city=(String)rs.getString("City");
			session.setAttribute("City",city);
			String pin=(String)rs.getString("PIN");
			session.setAttribute("Pin",pin);
			String Address=(String)rs.getString("Street_address");
			session.setAttribute("address",Address);
			String Phone_seller=(String)rs.getString("Phone");
			session.setAttribute("Phone_seller",Phone_seller);
			
			++flag;
					
		}
		
		if(flag!=0)
		{
			session.setAttribute("user",smail);
			response.sendRedirect("myAccount1.jsp");
		}
		else
		{
			response.sendRedirect("delar_register.jsp");
			session.setAttribute("msg","E-mail Id or Password may be incorrect...<br> Please rechack your E-mail Id and Password...");
			
		}
		
		con.close();
	}
	catch(Exception ex)
	{
		out.println("Hello ERROR:"+ex);
	}

%>