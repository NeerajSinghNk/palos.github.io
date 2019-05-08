<%@page import="java.sql.*"%>
<html>
	<head>
		<meta charset="utf-8">
		<title>Book category</title>
		
        <link rel="stylesheet" type="text/css" href="css/stylecategory.css">
		 <link rel="stylesheet" type="text/css" href="css/iconcatgory.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
					<h2><i class="fa fa-home"></i>My Account</h2>                                                     
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
						
                           
                            
						<div id="logo">
					<h1>
						<span>Prehistoric</span>
						<span>..And</span>
						<span>..Latest</span>
						<span>..Opus</span>
						<span>..Store</span>
					</h1>
						</div>   
                </div>
        </div>
	
<%!
	String user;
%>
	
<%
	System.out.println("orderHistory.jsp");
	
	user=(String)session.getAttribute("user");
	
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
		
		
		
		String order_Cust_Id=(String)session.getAttribute("Custid");
		
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
			Statement stmt=con.createStatement();
			Statement stmt1=con.createStatement();
			Statement stmt2=con.createStatement();
			ResultSet rs,rs1,rs2=null;
			String query=" ";
			String query1=" ";
			
			%>
			<div class="container">
				<table class="table table-bordered">
				<thead>
					<tr>
						<th><span >Book id</span></th>
						
						<th><span >Title</span></th>
						<th><span >Description</span></th>
						<th><span >Quantity</span></th>
						<th><span >Price</span></th>
						<th><span >Order Date</span></th>
						<th><span >To Be Deliverd</span></th>
						<th><span >Image</span></th>
						
					</tr>
				</thead>
			
			<%
			query="select DISTINCT Book_id from coustomer_order where Coustomer_id='"+order_Cust_Id+"'";
			//System.out.println("orderHistory.jsp--->"+query);
			rs=stmt.executeQuery(query);
			String order_Cust_Invoice=" ";
			String order_Book_id=" ";
			String order_Cust=" ";
			String order_Amount=" ";
			String order_dat=" ";
			String book_Id_Order=" ";
			String arr[]=new String[20];
			int i=0;
			while(rs.next())
			{
				//order_dat=(String)rs.getString("Order_date");
				arr[i]=(String)rs.getString("Book_id");
				i++;
			}
			
			rs1=stmt1.executeQuery("select * from Coustomer_order");
			while(rs1.next())
			{
				order_dat=(String)rs1.getString("Order_date");		
			}
			
			for(int j=0;j<=i;j++)
				{
					query1="select * from books_oldnew where Book_id='"+arr[j]+"'";
					//System.out.println("orderHistory.jsp_Query2--->"+query1);
					rs2=stmt2.executeQuery(query1);
					
					while(rs2.next())
					{
						book_Id_Order=(String)rs2.getString("Book_id");
						String order_Tit=(String)rs2.getString("Title");
						String order_Price=(String)rs2.getString("Price");
						String order_Image=(String)rs2.getString("Book_image");
						String order_Des=(String)rs2.getString("Description");
					
				%>
				
					<tr>
						<td><%=book_Id_Order%></td>
						
						<td><%=order_Tit%></span></td>
						<td><%=order_Des%></span></td>
						
						<td>1</span></td>
						<td><span>&#x20B9</span><%=order_Price%></td>
						<td><%=order_dat%></td>
						<td>Deliverd under 5-10 working day's</td>
						<td><img class="shop-item-image" src="book_images//<%=order_Image%>" height="100" width="100"></td>
						
					</tr>
				
				
				
				<%
					}
				}
				
			
			out.println("</table></div>");
			//out.println("<a href='myAccount.jsp'>Home</a>");
			con.close();
		}
		catch(Exception ex)
		{
			out.println("orderHistory--->"+ex);
		}
		
		
	}
	else{
		response.sendRedirect("login_form.jsp");
	}

%>
</body>
</html>