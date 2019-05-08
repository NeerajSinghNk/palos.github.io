<%@page import="java.sql.*"%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<html>
	<head>
        <title>E-commerce website</title>
        <meta></meta>
        <link rel="stylesheet" type="text/css" href="css/style.css">
		
	<link rel="stylesheet" type="text/css" href="css/myaccount2.css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" >

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
	
	<body >
		
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
		<a href="myAccount1.jsp"><li >Home</li></a>
		
		
		<a href="delar-contact-form-update.jsp"><li>Contact us</li></a>
	</ul>
	</nav>
	
	 
<div class="bodyy">	

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

	String user,nameUser=" ";
%>
<%
	System.out.println("myAccount.jsp");
	
	user=(String)session.getAttribute("user");
	//String typ=(String)request.getParameter("type");
	System.out.println(user);
	
	if(user!=null)
	{
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		
			Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
		
			Statement stmt=con.createStatement();
			
			ResultSet rs1=stmt.executeQuery("select * from seller_register where Shop_email='"+user+"'");
			
			while(rs1.next())
			{
				nameUser=(String)rs1.getString("Shop_name");
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
		
		
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		
			Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
		
			Statement stmt=con.createStatement();
			
			String query=" ";
			query="select * from seller_register";
			ResultSet rs=stmt.executeQuery(query);
			System.out.println(query);
		
			while(rs.next())
			{
				String shop=(String)rs.getString("Shop_email");
			
				if(shop.equals(user))//Seller/vender user Section....
				{
					//System.out.println(query);
				
				out.println("<div class='head'>");
		
		
		out.println("<div class='cat'>");
				
			out.println("<div class='box'>");
				out.println("<div class='icon'>");
						out.println("<i class='fa fa-envelope-open' aria-hidden='true'></i>");
					
							out.println("<a href='seller_Order.jsp'>New Order</a>");
				out.println("</div >");
			out.println("</div >");
			
			out.println("<div class='box'>");
				out.println("<div class='icon'>");
					out.println("<i class='fa fa-upload' aria-hidden='true'></i>");
					out.println("<a href='seller_book.jsp'>Sell books</a>");
				out.println("</div >");
			out.println("</div >");
			
			out.println("<div class='box'>");
				out.println("<div class='icon'>");
					out.println("<i class='fas fa-user-cog' aria-hidden='true'></i>");
					out.println("<a href='updatePassword.jsp'>Setting</a>");
				out.println("</div >");
			out.println("</div >");
		
			out.println("<div class='box'>");
				out.println("<div class='icon'>");
					out.println("<i class='fas fa-sign-out-alt' aria-hidden='true'></i>");	
				
					out.println("<a href='logout1.jsp'>Logout</a>");
				out.println("</div >");
			out.println("</div >");
				
	out.println("</div >");
	out.println("</div >");		
	
				}
				
				
			}
			
			
			
		
			con.close();
			
		}
		catch(Exception ex)
		{
			out.println("Hello ERROR:"+ex);
		}
		
		
	}
	
%>
		</div>
	</div>
</body>
</html>	