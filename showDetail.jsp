<%@ page import="java.sql.*"%>

<html>
	<head>
		<title>Show Detail</title>
		<script src="java_script/cart.js"></script>
		<link rel="stylesheet" href="css/star.css">
		<link rel="stylesheet" type="text/css" href="css/showdetails.css">

	     <link rel="stylesheet" type="text/css" href="css/style.css">
		 <link rel="stylesheet" type="text/css" href="css/icons.css">
	
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
			width: 200px;
			height:20px;
			text-decoration: none;
			color: white;
			margin-left: 100px;
			margin-top: 30px;
			transition: 0.6s ease-in;x;
	}
	.hamburger{
		left:1rem;
		top:1rem;
		width:1.5rem;
		height:.7rem;
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
					<h2><i class="fa fa-home"></i>MY ACCOUNT</h2>                                                     
				</span>
			</a>
			<a href="processCategory.jsp?book=Old_book ">
				<span id="nav2" class="btn-area">
					<h2><i class="fa fa-list" ></i>List OF Old Book</h2>
				</span>
			</a>
			<a href="category.jsp">
				<span id="nav3" class="btn-area">
					<h2><i class="fa fa-sitemap" ></i>Category Books</h2>
				</span>
			</a>
			<a href="logout.jsp">
				<span id="nav4" class="btn-area">
					<h2><i class="fa fa-sign-out"></i>Account Logout</h2>
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
						<%
							//String CartCount=(String)session.getAttribute("CartCount");
						%>
                           
                            <div class="cart_btn">
                                <a href="cart.jsp"><img src="images/img10.png"><span>Cart(0)</span></a>
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
	
	
	
	</head>
	<body>
	<div class="title">
		<h2>Book Description</h2>
		</div>
		<%!
			String user,Custid;
		%>
		
		<%
			System.out.println("showDetail.jsp");
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
			
			
			
			
				String bid=(String)request.getParameter("Book_id");
				String title=(String)request.getParameter("Title");
				String auther=(String)request.getParameter("Auther");
				String bktyp=(String)request.getParameter("Book_type");
				String im=(String)request.getParameter("Book_image");
				String pc=(String)request.getParameter("Price");
				String des=(String)request.getParameter("Description");
		
				
				session.setAttribute(bid+"",bid);
				session.setAttribute("pc",pc);
				session.setAttribute("bktyp",bktyp);
				//session.setAttribute("des",des);
				
		
		%>
		<!--
		<div class="Checkout">
			<img src="book_images//<%=im%>" height="400" width="300"><br>
			<b>Book Id:-</b><%=bid%><br>
			<b>Title:-</b><%=title%><br>
			<b>Auther:-</b><%=auther%><br>
			<b>Book Type:-</b><%=bktyp%><br>
			<b>Description:-</b><%=des%><br>
			<b>Price:-</b><%=pc%></br>
			
			<button><a href="#">Place Order</a></button>
		</div>
		-->
		
		<div class="main1" >
            <div class="layer1"></div>
			<div class="layer2"></div>
                <div class="content">
					<img class="shop-item-image" src="book_images//<%=im%>"><br>
					 <span class="shop-item-title"><b>Title:-</b><%=title%></span><br>
					 <span class="shop-item-id"><b>Book_id:-</b><%=bid%></span><br>
					 <span class="shop-item-auther"><b>Auther:-</b><%=auther%><span><br>
					<span class="shop-item-type"><b>Book Type:-</b><%=bktyp%></span><br>
					<span class="shop-item-dec"><b>Description:-</b><%=des%></span><br>
					 <input type="hidden" id="book-id" value="<%=bid%>">
                    <div class="shop-item-details">
                        <span class="shop-item-price">Price:-<span>&#x20B9</span><%=pc%>/-</span><br>
                        <button class="btn-primary-shop-item-button" type="button">Buy Now</button>
						<a href="AddToCart1.jsp">
						<button class="btn-primary-shop-item-button" type="button" onclick="return ready()">ADD TO CART</button></a>
                 
                    </div>
                </div>
            </div>
		<!--
	<div class="rate">	
		<p>Please rate this item:</p>
		<form action="showDetail.jsp" method="post">
		 Rating:
    <fieldset class="rating">     
        <input type="radio" name="stars" id="5_stars" value="5" >
        <label class="stars" for="4_stars">5 stars</label>
        <input type="radio" name="stars" id="4_stars" value="4" >
        <label class="stars" for="3_stars">4 stars</label>
        <input type="radio" name="stars" id="3_stars" value="3" >
        <label class="stars" for="2_stars">3 stars</label>
        <input type="radio" name="stars" id="2_stars" value="2" >
        <label class="stars" for="1_stars">2 star</label>
        <input type="radio" name="stars" id="1_stars" value="1" required>
        <label class="stars" for="0_stars">1 star</label>
    </fieldset>
	<input type="submit" value="Submit Rating">
	</form>
	</div>
	-->
		
		<%
			
		
			}
			else{
				response.sendRedirect("login_form.jsp");
			}
		
		%>
	</body>

</html>