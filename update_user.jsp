<%@page import="java.sql.*"%>

<%!
	String  user;
%>

<%
	System.out.println("Update_user.jsp");
	user=(String)session.getAttribute("user");
	String  email=(String)request.getParameter("email");
	String  pwd=(String)request.getParameter("password");
	String  phone=(String)request.getParameter("phone");
	String  address=(String)request.getParameter("address");
	String currentPassword=request.getParameter("current");
		String Newpass=request.getParameter("new");
		String conpass=request.getParameter("confirm");
	
	String pass="";
	String pho="";
		int id=0;
	
	if(user!=null)
	{
		
		
		try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			
			Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
			
			Statement stmt=con.createStatement();
			
			ResultSet rs=stmt.executeQuery("select * from coustomer_register where Password='"+currentPassword+"'");
			
			while(rs.next())
			{
				id=rs.getInt("Coustomer_id");
				pass=rs.getString("Password");
				pho=rs.getString("Phone");
			} 
			System.out.println(id+ " "+pass);
			if(pass.equals(currentPassword))
			{
				Statement st1=con.createStatement();
				Statement st2=con.createStatement();
				int i=st1.executeUpdate("update coustomer_register set Password='"+Newpass+"',Phone='"+phone+"',Address='"+address+"' where Phone='"+pho+"'");
				int j=st2.executeUpdate("update books_oldnew set Phone='"+phone+"' where Phone='"+pho+"'");
				session.setAttribute("id","**Password changed successfully");
				st1.close();
				con.close();
			}
			else{
			session.setAttribute("id","**Current Password May Be Incorrect");
			}
			
			response.sendRedirect("update_user_data.jsp");
		}
		catch(Exception ex)
		{
			out.println(ex);
		}
	}
	else{
		response.sendRedirect("error.jsp");
	}
%>