<%@page import="java.sql.*"%>
<%
/*
	This page are deleting a record from student detail......
*/
%>
<%!
	String user;
%>

<%

	
	System.out.println("DeleteBookData.jsp");
	String dsd=(String)request.getParameter("book1");
	String dd=(String)request.getParameter("bid1");
	
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			
			Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
			
			Statement stmt=con.createStatement();
			
			int i=0;
			System.out.println("Book Delete-->"+i);
			i=stmt.executeUpdate("delete from books_oldnew where Book_type='"+dsd+"' and Book_id='"+dd+"'");
			//i=stmt.executeUpdate("delete from coustomer_order where Book_id='"+dsd+"'");
			if(i>0)
			{
				session.setAttribute("dd",dd);
			}
			
			
			con.close();
			response.sendRedirect("Delete_Book_Data.jsp");
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	
%>