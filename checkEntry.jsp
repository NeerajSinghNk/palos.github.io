<%@page import="java.sql.*"%>
<%@page import="java.util.Enumeration"%>


<html>
	<head>
		<title>My Account</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/myaccount.css">
	
	<link rel="stylesheet" type="text/css" href="css/cat.css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" >

	<style>
.btn {
  border: none;
  color: white;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
}

.success {background-color: #4CAF50;} /* Green */
.success:hover {background-color: #46a049;}


</style>
	
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
		
		background-color: white;
		
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
		<a href="contactUs.jsp"><li>Contact us</li></a>
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
	String user;

%>

<%
	System.out.println("checkEntry.jsp");
	
	user=(String)session.getAttribute("user");
	
	if(user!=null)
	{
		String id=(String)session.getAttribute("Custid");
		String invoice=(String)session.getAttribute("Invoice");
		String tr=(String)session.getAttribute("TotalRate");
		String bid=" "; 
		//bid=(String)session.getAttribute(""+bid);
		String dlr=(String)session.getAttribute("dlr");
		String deliverd=(String)session.getAttribute("deliverd");
		//String bktyp=(String)session.getAttribute("bktyp");
		String ord_date=(String)session.getAttribute("order1");
		
		
		Enumeration e=session.getAttributeNames();
		
		//Integer zz;
		
		
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
			Statement stmt=con.createStatement();
			
			int j;
			String query=" ";
			
			while(e.hasMoreElements())
			{
				//String CartCheckOut=" ";
				//String checkEn=" ";
				String name4= (String)e.nextElement();
				String checkEn=(String)session.getAttribute(name4).toString();
				String CartCheckOut=(String)session.getValue(checkEn);
				//zz=Integer.parseInt(CartCheckOut);
				//session.setAttribute("CartCheckOut",CartCheckOut);
				System.out.println("checkEntry.jsp--->"+CartCheckOut);
					
		
				if(CartCheckOut!=null)
				{
					
						query="insert into coustomer_order(Invoice,Coustomer_id,Book_id,Amount,Method,Order_date) values ('"+invoice+"','"+id+"','"+CartCheckOut+"','"+tr+"','COD','"+ord_date+"')";
						System.out.println("Invoice2:::"+query);
						j=stmt.executeUpdate(query);
					
				}
			}	
			
			session.setAttribute("invoice","Order placed successfully...");
			out.println("<h2>Order placed successfully...</h2>");
			out.println("<button type='button' class='btn success'> <a href='category.jsp'>Continue shopping</a><button>");
			//session.removeAttribute(CartCheckOut);
			//session.invalidate();
			//response.sendRedirect("orderHistory.jsp");             
			
		}
		
		catch(Exception ex)
		{
			out.println("CheckEntry:::"+ex);
		}
		
		
	}
	else{
		response.sendRedirect("login_form.jsp");
	}
	
%>


</body>
</html>