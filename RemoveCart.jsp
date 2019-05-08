<%@page import="java.sql.*"%>
<%@page import="java.util.Enumeration"%>
<html>
	<head>
		<title>Types Of Books</title>
		<meta></meta>
        <link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" href="css/cart.css" />
        <script src="java_script/store.js" async></script>
        <script src="java_script/cart.js"></script>
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
		<%!
		String count;
	%>				
						<%if(session.getAttribute("user")!=null)
						{
							//count=(String)session.getAttribute("count");
							%>
                        <div class="header_right">
                            <div class="login_regis_btn">
                                <a href="myAccount.jsp">Home/</a>
                                <a href="logout.jsp">Logout</a>
                                
                            </div>
                            <div class="cart_btn">
                                <a href="viewUserCart.jsp"><img src="images/img10.png"><span>Cart(0)</span></a>
                            </div>
                        </div>
						<%}%>
                    </div>    
                </div>
        </div>
       
		
		
		 
		<table align="center" border="0" cellspacing="10px" cellpadding="10px">
		<tr>
	
	
		<%
			
			System.out.println("processCategory.jsp");
			String result=(String)request.getParameter("book");
			String Custid=(String)session.getAttribute("Custid");
			
			Enumeration e=session.getAttributeNames();
		
		while(e.hasMoreElements())
		{
			String name= (String)e.nextElement();
			System.out.println("*****************"+name);
			 session.removeAttribute(name);
		}
		
			try
			{
				
				
				
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
				Statement stmt=con.createStatement();
				
				String query=" ";
				query="Select * from books_oldnew where Book_type='"+result+"'";
				ResultSet rs= stmt.executeQuery(query);
				
				
				while(rs.next())
				{
					String bookid=(String)rs.getString("Book_id");
					String tit=(String)rs.getString("Title");
					String Description=(String)rs.getString("Description");
					String auth=(String)rs.getString("Auther");
					String pub=(String)rs.getString("Publisher");
					String image=(String)rs.getString("Book_image");
					String booktype=(String)rs.getString("Book_type");
					String Price=(String)rs.getString("Price");
					
					session.setAttribute(bookid+"",bookid);
					//String id=(String)session.getAttribute("Cust_id");
					//System.out.println(id);
					//session.setAttribute("count",count);
					if(session.getAttribute("bookid")!=null)
					{
		%>	
		
			<td>
			
			<section class="container content-section">
			<div class="shop-items">
			<div class="shop-item">
				<a href="showDetail.jsp?Book_id=<%=bookid%>&Title=<%=tit%>&Price=<%=Price%>&Auther=<%=auth%>&Book_type=<%=booktype%>&Book_image=<%=image%>&Description=<%=Description%>">
				<img class="shop-item-image" src="book_images//<%=image%>"></a><br>
				<h2 class="section-header" id="book-id" ><b>Book Id:-</b><%=bookid%><br></h2>
				<h2 class="section-header" "><b>Title:-</b><%=tit%><br></h2>
				<span class="shop-item-title"><b>Book Type:-</b><%=booktype%></span>
				<div class="shop-item-details">
                    <span class="shop-item-price">Price:-<%=Price%></span>
					<!--<a href="addToCart.jsp?Book_id=<%=bookid%>">-->
					<a href="RemoveCart.jsp">
						<button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button></a>
                   
                </div>
			</div>
			</div>	
			</section>
			</td>	
			
			
			
		</tr>		
				
		</table>		
		<%		
					}
				}
				con.close();
			}
			catch(Exception ex)
			{
				out.println("Error:-"+ex);
			}
			
		%>
		
		








	
	</body>
</html>