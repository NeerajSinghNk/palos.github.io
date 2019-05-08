<%@page import="java.sql.*"%>

<%!
	String user;
%>

<%
	System.out.println("loadBookDetail.jsp");
	user=(String)session.getAttribute("user");
	if(user!=null)
	{
		//System.out.println("@@@@@@@@@@@@@@@@@@@@@");
		//String updateType=(String)request.getParameter("updateT");
		String s=(String)request.getParameter("book");
		String b=(String)request.getParameter("bid");
		String a,bb,c,d,query=" ";
		
		try
			{
			
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			
				Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
			
				Statement stmt=con.createStatement();  
			
				ResultSet rs=stmt.executeQuery("select * from books_oldnew where Book_type='"+s+"' and Book_id='"+b+"'");
				if(rs.next())
				{
					c=(String)rs.getString("Book_image");
					
					%>
					<span ><img class="shop-item-image" src="book_images//<%=c%>" height="100" width="100"></span>
					<%
					
				}
				con.close();
			}		
			catch(Exception g)
			{
				out.println(g);
			}
		
		
		try
			{
			
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			
				Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
			
				Statement stmt=con.createStatement();  
			
				ResultSet rs=stmt.executeQuery("select * from books_oldnew where Book_type='"+s+"' and Book_id='"+b+"'");
				if(rs.next())
				{
					a=(String)rs.getString("Title");
					out.println("<p>Title:-</p><input type='text'  name='nameT' id='nameT' value='"+a+"' required>");
				}
				con.close();
			}		
			catch(Exception g)
			{
				out.println(g);
			}
			try
			{
			
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			
				Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
			
				Statement stmt=con.createStatement(); 
			
				ResultSet rs=stmt.executeQuery("select * from books_oldnew where Book_type='"+s+"' and Book_id='"+b+"'");
				if(rs.next())
				{
					bb=(String)rs.getString("Price");
					out.println("<p>Price:-</p><input type='text' name='prcT' id='PrcT' value='"+bb+"' required>");
					
				}
				con.close();
			}		
			catch(Exception g)
			{
				out.println(g);
			}
			
			try
			{
			
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			
				Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
			
				Statement stmt=con.createStatement(); 
			
				ResultSet rs=stmt.executeQuery("select * from books_oldnew where Book_type='"+s+"' and Book_id='"+b+"'");
				if(rs.next())
				{
					d=(String)rs.getString("Book_type");
					out.println("<p>Book Type:-</p><input type='text' name='bt_typ' id='bt_typ' value='"+d+"' required>");
					
				}
				con.close();
			}		
			catch(Exception g)
			{
				out.println(g);
			}
			
			
			
		
		
	}
	else{
		response.sendRedirect("login_form.jsp");
	}
	

%>