<%@page import="java.sql.*"%>
<%@page import="java.util.Enumeration"%>

<%!
	int Cartcount;
%>
<html>
	<head>
		<title>Cart Page</title>
		
		<link rel="stylesheet" type="text/css" href="css/stylecategory.css">
		 <link rel="stylesheet" type="text/css" href="css/iconcatgory.css">

		<link rel="stylesheet" type="text/css" href="css/cart.css">
		 <meta charset="utf-8">
		  <meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
	
		
	body{
		 height: 400px;
		background: linear-gradient(to bottom left, #33ccff 23%, #007d80 100%)

	}
	nav{
			position:fixed;
			top:15%;
			left:4%;
			
			}
		nav::before{
			content:'';
			display:inline-block;
			width:10%;
			height:100%;
		
			
		}	
		nav ul{
			width:80%;
			display:inline-block;
			list-style:none;
			
		}
		nav ul li{
			text-align:center;
			border: 1px solid rgb(143, 103, 75);
			border-radius: 10px;
			background: black;
			padding: 10px 10px;
			width: 300px;
			height:50px;
			text-decoration: none;
			color: white;
			margin-left: 100px;
			margin-top: 30px;
			transition: 0.6s ease-in;x;
	}
	.hamburger{
		left:1rem;
		top:1rem;
		width:2.5rem;
		height:1.7rem;
		position:fixed;
		z-index:2;
		cursor:pointer;
	}
	.hamburger span{
		display:block;
		background-color:#262626;;
		height:20%;
		margin-bottom:20%;
		
	}
	.bodyy{
		position:fixed;
		top:0;
		left:0;
		right:0;
		bottom:0;
		
		background-color:#fafafa;
		color:#262626;
		padding:4rem;
		overflow:auto;
		transition:.2s ease;
	}
	@media screen and(orientation:portrait){
		.bodyy{
			padding:4rem 1rem;
		}
	}
	@media screen and (orientation:portrait){
		nav.active + .bodyy{
			transform:translate(55%) scale(0.8);
			box-shadow:00 30px 5px
			rgba(38,38,38,0.3);
		}
		
	}
	@media screen and (orientation:landscape){
		nav.active + .bodyy{
			transform:translate(35%) scale(0.8);
			box-shadow:00 30px 5px
			rgba(38,38,38,0.3);
		}
		
	}
	
	
	
	

	
	</style>
	</head>
	<body>
	
	<div class="hamburger">
			<span></span>
			<span></span>
			<span></span>		
		 
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.slim.min.js"></script>
	<script>

	$(".hamburger").click(function(){
		$("nav").toggleClass("active");
	});

	
	
	
	
	</script>
	</div>
	<nav>
	<ul>	
		<a href="myAccount.jsp"><li >Home</li></a>
		<a href="#"><li>Buy a book</li></a>
		<a href="#"><li>Top writer</li></a>
		<a href="#"><li>Study corner</li></a>
		
		<a href="#"><li>Contact us</li></a>
	</ul>
	</nav>
	
	 
<div class="bodyy">	

<div class="banner-area" >
			<a href="myAccount.jsp">
				<span id="nav1" class="btn-area">
					<h2><i class="fa fa-home"></i>MY ACCOUT</h2>                                                     
				</span>
			</a>
			
			<a href="logout.jsp">
				<span id="nav2" class="btn-area">
					<h2><i class="fa fa-sign-out" aria-hidden="true"></i> Account Logout</h2>
				</span>
			</a>
		</div>	
		
<div class="main">
            <div class="topbar"></div>
                <div class="social_icon">
                    <div class="box">
                        <div class="icon">
                            <a href="https://facebook.com"><img src="images/facebook.png"></a>
                            <a href="https://linkdin.com"><img src="images/img6.png"></a>
                            <a href="https://youtube.com"><img src="images/img7.png"></a>
                            <a href="https://instagram.com"><img src="images/img8.png"></a>
                            <a href="https://twiter.com"><img src="images/img9.png"></a>
                        </div>
						
                           <div class="cart_btn">
                                <a href="cart.jsp"><img src="images/img10.png"><span>Cart(<%=Cartcount%>)</span></a>
                            </div>
					
						<div id="logo">
					<h1 style="font-size:50px" "font-family:Freestyle Script";>
						<span>Prehistoric</span>
						<span>..And</span>
						<span>..Latest</span>
						<span>..Opus</span>
						<span>..Store</span>
					</h1>
						</div>   
                </div>
        </div>
		
		<%
			System.out.println("cart.jsp");
			String user=(String)session.getAttribute("user");
			if(user!=null)
			{
				
				
							try
								{
									Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
								
									Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
								
									Statement stmt=con.createStatement();
									
									ResultSet rs1=stmt.executeQuery("select * from coustomer_register where Email='"+user+"'");
									
									while(rs1.next())
									{
										String nameUser=(String)rs1.getString("Login");
										out.println("<h2 style='color:black';><i>");
											out.println("Welcome..." +nameUser);
										out.println("</i></h2>");
									}
							
										con.close();
								}
								catch(Exception ex)
								{
									out.println(ex);
								}
				
				
				
				float total=0;
				String cartAdd=" ";
				
				try
				{
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
					Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
					Statement stmt=con.createStatement();
					ResultSet rs=null;
					String tot,query=" ";
					
					
					out.println("<form method='post' action='checkOut.jsp'>");
					
					//out.println("<center>");
					
					out.println("<div class='container'><table class='table table-bordered'>");
						out.println("<tr>");
							out.println("<th>Book</th>");
							out.println("<th>Title</th>");
							out.println("<th>Price</th>");
						out.println("</tr>");
					
					
					
				
				Enumeration e=session.getAttributeNames();
				
				while(e.hasMoreElements())
				{
					String name2= (String)e.nextElement();
					//out.println("<tr><td>"+name+"</td></tr>");
					String bkd=(String)session.getAttribute(name2).toString();
					//out.println(name2+": "+session.getAttribute(name2).toString() + " <br>" );
					cartAdd=(String)session.getValue(bkd);
					System.out.println("Cart.jsp::::"+cartAdd);
					//if(cartAdd!=null)
					//{
						query="select * from books_oldnew where Book_id='"+cartAdd+"'";
						//System.out.println("Cart.jsp--->"+query);
						rs=stmt.executeQuery(query);
					//}
					
					while(rs.next())
					{
						
						
						String bkdtit=(String)rs.getString("Title");
						//session.setAttribute(bkdtit+"",bkdtit);
						String bkdprc=(String)rs.getString("Price");
						String bkdimg=(String)rs.getString("Book_image");
						
						total=total+(Float.parseFloat(bkdprc));
						session.setAttribute("total",total);
						System.out.println("Total::::"+total);
						//tot=Float.toString(total);
					%>
					
					<tr>
						<td><img src="book_images//<%=bkdimg%>" height="80" width="80"></td>
						<td><b><%=bkdtit%></b></td>
						<td><b><span>&#x20B9</span><%=bkdprc%></b></td>
					</tr>
					
					
					
					
					<%
					
					
					}
					
				}
				Cartcount++;
				session.setAttribute("Cartcount",Cartcount);
				%>
					
					<tr>
						<th colspan="2" align="right"><b>Total:</b></th>
						<td></b><%=total%>/-</b></td>
					</tr>
					
					<%
				session.setAttribute("t",total);
					
					
					
				out.println("</table><div>");
				out.println("</span>");
				
				//out.println("</center>");
				
				out.println("<table><div align='right'>");
					out.println("<tr><span disabled><input type='radio' name='online' id='net' value='Credit/Debit/ATM Card'><i>Credit/Debit/ATM Card</i></span></tr><br>");
					out.println("<tr><span><input type='radio' name='online' value='PhonePe/BHIM UPI'><i>PhonePe/BHIM UPI</i></span></tr><br>");
					out.println("<tr><span><input type='radio' name='online' value='Net Banling'><i>Net Banling</i></span></tr><br>");
					out.println("<tr><span><input type='radio' name='online' value='Cash on Delivery'><i>Cash on Delivery</i></span></tr><br>");
				
				out.println("<button type='submit' class='btn btn-primary'>Place Order</button>");
				
				out.println("</table></div>");
				out.println("</form>");
				
				con.close();
				
				
				}
				catch(Exception ex)
				{
					out.println("Error cart:-"+ex);
				}
				
				
				
				
				
			
				
		
			}
			else{
				response.sendRedirect("login_form.jsp");
			}
	%>
	
	
	
	
	
	
	</body>
</html>

