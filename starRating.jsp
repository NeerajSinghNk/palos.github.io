<%@page import="java.sql.*"%>

<%
	System.out.println("starRating.jsp");
	
	String star=(String)request.getParameter("stars");
			
			try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
				Statement stmt=con.createStatement();
				String query="update books_oldnew set Rating_value='"+star+"' where Book_id='"+bid+"'";
				int i=0;
				System.out.println(query);
				i=stmt.executeUpdate(query);
				
				
				
				
				con.close();
			}
			catch(Exception ex)
			{
				out.println(ex);
			}
		
			out.println("<h3 style:color='red'>Thank's for Rating... </h3>");
			out.println("</form>");
%>