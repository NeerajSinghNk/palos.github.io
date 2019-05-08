<%@page import="java.sql.*"%>

<%!
	String user;
%>
<%
	System.out.println("updateBookDeatil.jsp");

	//String updateId=(String)session.getAttribute("phone");
	String updateTitle=(String)request.getParameter("nameT");
	String updateRate=(String)request.getParameter("prcT");
	String bttyp=(String)request.getParameter("book");
	String up_id=(String)request.getParameter("bid");
	
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
			Statement stmt=con.createStatement();
			ResultSet rs=null;
			String query="update books_oldnew set Title='"+updateTitle+"',Price='"+updateRate+"', Book_type='"+bttyp+"' where Book_id='"+up_id+"'";
			int i=0;
			System.out.println(query);
			i=stmt.executeUpdate(query);
			if(i!=0)
			{
				session.setAttribute("up_id",up_id);
				
			}
			
			
			con.close();
			
			
			response.sendRedirect("updateBookDetail.jsp");
		}
		catch(Exception ex)
		{
			out.println(ex);
		}
	

%>