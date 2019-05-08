<%@page import="java.sql.*"%>

	 <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


<%!
	String user;
%>
<%
	System.out.println("loadDeleteDataTable.jsp");
	user=(String)session.getAttribute("user");
		if(user!=null)
		{
			String delBook=(String)request.getParameter("book1");
			String del=(String)request.getParameter("bid1");
			
			try
			{
			
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			
				Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
			
				Statement stmt=con.createStatement();  
			
				//ResultSet rs=stmt.executeQuery("select * from books_oldnew where Book_type='"+del+"' and Book_id='"+delBook+"'");
				ResultSet rs=null;
				String query="select * from books_oldnew where Book_type='"+delBook+"' and Book_id='"+del+"'";
				System.out.println(query);
				rs=stmt.executeQuery(query);
                out.println("<div class='container'><table class='table table-bordered'>");
				
					out.println("<tr>");
						out.println("<th>Image</th>");
						out.println("<th>Title</th>");
						out.println("<th>Auther</th>");
						out.println("<th>Description</th>");
						out.println("<th>Book Type</th>");
						out.println("<th>Publisher</th>");
						out.println("<th>Price</th>");
					out.println("</tr>");
                
				if(rs.next())
				{
						String bm=(String)rs.getString("Book_image");
						String t=(String)rs.getString("Title");
						String a=(String)rs.getString("Auther");
						String d=(String)rs.getString("Description");
						String b=(String)rs.getString("Book_type");
						String pu=(String)rs.getString("Publisher");
						String pr=(String)rs.getString("Price");
						
						out.println("<tr>");
							%>
							<td><span ><img class="shop-item-image" src="book_images//<%=bm%>" height="100" width="100"></span></td>
							<%
							out.println("<td>"+t+"</td>");
							out.println("<td>"+a+"</td>");
							out.println("<td>"+d+"</td>");
							out.println("<td>"+b+"</td>");
							out.println("<td>"+pu+"</td>");
							out.println("<td><span>&#x20B9</span>"+pr+"</td>");
						out.println("</tr>");
				}
				con.close();
			}		
			catch(Exception g)
			{
				out.println(g);
			}
			
            out.println("</table></div>");
           
		}
	else{
		response.sendRedirect("login_form.jsp");
	}
%>