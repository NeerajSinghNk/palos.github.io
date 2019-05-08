<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title>Types Of Books</title>
		<meta></meta>
		<meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
	
		 <link rel="stylesheet" type="text/css" href="css/processcategory.css">

		<script type="text/javascript" href="java_script/logo.js"></script>
		<script src="java_script/validRegistration.js"></script>
		 <link rel="stylesheet" type="text/css" href="css/icons.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
			
		

		<style>
	body{
		 height: 500px;
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
		
		
		background:white;
			
	
		
		
		position:fixed;
		top:0;
		left:0;
		right:0;
		bottom:0;
		
	
		
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
	#logo{
		position:absolute;
		top:10px;
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
			
			<a href="category.jsp">
				<span id="nav2" class="btn-area">
					<h2><i class="fa fa-sitemap" ></i>Category</h2>
				</span>
		
			<a href="logout.jsp">
				<span id="nav3" class="btn-area">
					<h2><i class="fa fa-sign-out"></i> Account Logout</h2>
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
	
	<%!
		//Integer count=0;
	%>				
						<%
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
							
							
							
							%>
                         <div class="cart_btn">
                                <a href="cart.jsp"><img src="images/img10.png"><span>Cart(0)</span></a>
                            </div>
						<%}%>
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
		
		</div>   
              
		
				
		<div class="shop">
	
		<%
			
			//String count1=(String)session.getAttribute("Cartcount").toString();
			//count=Integer.parseInt(count1);
			
			System.out.println("processCategory.jsp");
			String result=(String)request.getParameter("book");
			String Custid=(String)session.getAttribute("Custid");
			
			Vector v = new Vector();
			
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
					
					
		%>	
		
			
			<div class="shop-item">
				<div class="content">
				<h4>PALOS</h4>
				<img class="shop-item-image" src="book_images//<%=image%>"><br>
					<h3 class="section-header"><b>Title:-</b><%=tit%><br></h3>
				
				<h5 class="shop-item-title"><b>Book Type:-</b><%=booktype%><br></h5>
				 <h6 class="shop-item-price"><b>Price:-<span>&#x20B9</span></b><%=Price%>/-</h6>
				<a href="showDetail.jsp?Book_id=<%=bookid%>&Title=<%=tit%>&Price=<%=Price%>&Auther=<%=auth%>&Book_type=<%=booktype%>&Book_image=<%=image%>&Description=<%=Description%>">More Detail</a>	
			
				</div>	
          
			</div>
			<%		
				}
				con.close();
			}
			catch(Exception ex)
			{
				out.println("Error:-"+ex);
			}
			
		%>
		
<%
	String book=(String)session.getAttribute("book");
	//	System.out.println("Book Is :-"+book);
		if(book!=null)
		{
			out.println("<span style='color:red; font-size:20px;' name='msg' id='msg'>"+book+"</span>");
			//out.println("<script>alert(book);</script>");
			session.removeAttribute("book");
		}

%>		
	
			</div>
		</div>	
	</body>
</html>