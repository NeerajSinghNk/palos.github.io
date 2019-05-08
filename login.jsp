<%@page import="java.sql.*"%>

<%
	String email=(String)request.getParameter("email");
	
	String pwd=(String)request.getParameter("password");
	
	
	
	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		
		Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
		
		Statement stmt=con.createStatement();
		
		ResultSet rs=stmt.executeQuery("select * from coustomer_register where Email='"+email+"' and password='"+pwd+"'");
		
		System.out.println(rs);
		
		int flag=0;
		int count=0;
		while(rs.next())
		{
			String Cust_id=(String)rs.getString("Coustomer_id");
			session.setAttribute("Custid",Cust_id);
			String Phone=(String)rs.getString("Phone");
			session.setAttribute("phone",Phone);
			String num=(String)rs.getString("Login");
			session.setAttribute("num",num);
			String address=(String)rs.getString("Address");
			session.setAttribute("add",address);
			
			++flag;
					
		}
		
		if(flag!=0)
		{
			session.setAttribute("user",email);
			/*
			
			out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println("<script>");
			out.println("$(document).ready(function(){");
			out.println("swal('Good job!', 'You clicked the button!', 'success');");
			out.println("});");
			out.println("</script>");
			*/
			
			response.sendRedirect("myAccount.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
			
			session.setAttribute("msg","E-mail Id or Password may be incorrect...<br> Please rechack your E-mail Id and Password...");
			
			
			/*
			out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println("<script>");
			out.println("$(document).ready(function(){");
			out.println("swal('Opps!', 'E-mail id or Password !', 'error');");
			out.println("});");
			out.println("</script>");
			*/
			
			
			out.println("<h3>Incorrect username or password...</h3>");
		
		}
		
		con.close();
	}
	catch(Exception ex)
	{
		out.println("Hello ERROR:"+ex);
	}

%>

<%

	//String user=(String)session.getAttribute("user");
	
	//if(user!=null)
	//{
		try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from seller_register");
		int count=0;
		while(rs.next())
			{
				
				String deliverd=(String)rs.getString("Email");
				session.setAttribute("deliverd",deliverd);
		
		
		
		
			}	
		
		
		
		con.close();
		
	}
	catch(Exception ex)
		{
			out.println(ex);
		}
		
	//}
	//else{
		//response.sendRedirect("login_form.jsp");
	//}

	

%>
