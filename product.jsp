<%@page import="java.sql.*"%>

<html>
	<head>
        <title>Product</title>
        <meta></meta>
        <link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	
	<body>
	
        <div class="main">
            <div class="topbar"></div>
                <div class="social_icon">
                    <div class="container">
                        <div class="icon">
                            <a href="https://facebook.com"><img src="images/facebook.png"></a>
                            <a href="https://linkdin.com"><img src="images/img6.png"></a>
                            <a href="https://youtube.com"><img src="images/img7.png"></a>
                            <a href="https://instagram.com"><img src="images/img8.png"></a>
                            <a href="https://twiter.com"><img src="images/img9.png"></a>
                        </div>
						<%if(session.getAttribute("user")!=null)
						{%>
                        <div class="header_right">
                            <div class="login_regis_btn">
                                <a href="myAccount.jsp">Home/</a>
                                <a href="logout.jsp">Logout</a>
                                
                            </div>
                            <div class="cart_btn">
                                <a href="#"><img src="images/img10.png"><span>Cart(0)</span></a>
                            </div>
                        </div>
						<%}%>
                    </div>    
                </div>
        </div>
       
	
		<%
			System.out.println("Product.jsp");
			
			String pid=request.getParameter("product");
			
			
			try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
				Statement stmt=con.createStatement();
				
				String query=" ";
				query="Select * from books_oldnew where Book_id='"+pid+"'";
				ResultSet rs= stmt.executeQuery(query);
				while(rs.next())
				{
					String image=(String)rs.getString("Book_image");
				
		%>
			<table border="0" width="997" height="399">
				<tr>
					<td width="358"class="center1"><img src="E:\\<%=image%>" width="200" height="300"></td>
				
				</tr>
			</table>
		<%
				}
			}
			catch(Exception ex)
			{
				out.println("Error:-"+ex);
			}
		%>	
	
	</body>

</html>