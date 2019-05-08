<%@page import="java.sql.*"%>

<html>
	<head>
		<title>Add To Cart</title>
	
	</head>
	<body>
		<div id="addCart">
		
		
		</div>
		<%!
			String user,Custid,bookid;
		
		%>
		
		<%
		/*
			System.out.println("addToCart,jsp");
			
			user=(String)session.getAttribute("user");
			
			if(user!=null)
			{
				Custid=(String)session.getAttribute("Custid");
				
				System.out.println("Customer id:->"+Custid);

				bookid=(String)request.getParameter("Book_id");
				session.setAttribute("book",bookid);
				int count=0;
				
				session.setAttribute("count",count);
				
				try
				{
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
					Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
					Statement stmt=con.createStatement();
					ResultSet rs=stmt.executeQuery("select * from cart where Book_id='"+bookid+"'");
					int count1=0;
					while(rs.next())
					{
						count1++;
					}	
					if(count1>0)
					{
						
						session.setAttribute("book","Warning: This Book Already Exists In Your Cart....");
					}
					else
					{
						if(count>0)
						{
							String query=" ";
							query="insert into cart(Customer_id,Book_id)values('"+Custid+"','"+bookid+"')";
							System.out.println(query);
					
							int i=0;
							i=stmt.executeUpdate(query);
					
							session.setAttribute("count",count);
							System.out.println(count);
							count++;
						}					}
					
					con.close();
					response.sendRedirect("processCategory.jsp?type1=tech&book=New_book&x=52&y=13");
				}
				catch(Exception ex)
				{
					out.println("Error:-->"+ex);
				}
			}
			else{
				
			}
			*/
		%>
		<div id="addCart"></div>
	</body>
</html>