<%@ page import="java.sql.*" %>
<%
		
		
			
		System.out.println("BookContact.jsp");
		
		String a=(String)request.getParameter("book");
		String phoneCus=(String)session.getAttribute("phone");
			System.out.println("Coustomer Phone>>>>>>>>>>>"+phoneCus);
			
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:commerce");
			stmt=con.createStatement();
			int i=0;
			String qry="select * from books_oldnew where Phone='"+phoneCus+"' and Book_type='"+a+"'";
			System.out.println(qry);

			
			
			out.println("<option>select</option>");
			rs=stmt.executeQuery(qry);
			while(rs.next())
			{

				String bd=rs.getString("Book_id");
				out.println("<option>"+bd+"</option>");
			}
			
			out.println("</select>");
			con.close();
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
		
		
		
%>

