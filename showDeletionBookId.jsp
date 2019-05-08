<%@ page import="java.sql.*" %>
<%
		
		
			
		System.out.println("showCity.jsp");
		
		String s=(String)request.getParameter("book1");
			
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:commerce");
			stmt=con.createStatement();
			int i=0;
			String qry="select * from books_oldnew where Book_type='"+s+"'";
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

