<%@page import="java.sql.*"%>

<%!
	String user,Custid;
%>

<%
/*
	System.out.println("viewUserCart.jsp");
	user=(String)session.getAttribute("user");
	
	if(user!=null)
	{
		Custid=(String)session.getAttribute("Custid");
		System.out.println("User cart:-"+Custid);
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
			Statement stmt=con.createStatement();
		
			int count=0;
			String query=" ";
			query="Select * from cart where Customer_id='"+Custid+"'";
			System.out.println(query);
			ResultSet rs= stmt.executeQuery(query);
			while(rs.next())
			{
				
					String bookViewCart=(String)rs.getString("Book_id");
					System.out.println("Hello"+bookViewCart);
					
					
					session.setAttribute("bookViewCart",bookViewCart);
				
			}
			response.sendRedirect("cart.jsp");
			con.close();
			
		}
		catch(Exception ex)
		{
			out.println("Error userCart:-" +ex);
		}
	}
	else{
		response.sendRedirect("login_form.jsp");
	}
*/
%>