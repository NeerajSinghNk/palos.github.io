<%@page import="java.sql.*"%>

	
	<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/icons.css">
    <script src="java_script/delarBook.js"></script>
	<script src="java_script/title.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="css/category.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<script>
	function validRegister()
		{
	
			var fname= document.getElementById("fname").value;
			var lname=document.getElementById("lname").value;
			var book=document.getElementById("book").value;
			var bid=document.getElementById("bid").value;
			var subject=document.getElementById("subject").value;
			
			if((fname=="") || (lname=="") || (book=="") || (bid=="") || (subject==""))
				{
					swal({
						title:"Empty places!!!",
						text:"Please fill the empty field!!!",
						icon:'warning',
					});
					
					return false;
				}
			else if((fname.value>3) || (fname.value<25) || (lname.value>5) || (lname.value<25))
			{
				swal({
					title:"Name field!!!",
					text:"First and Last Name between 3 to 25 character!!!",
					icon:'warning',
				});
				
				return false;
			}

		}
	</script>

<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}


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
		
		<a href="delar-contact-form-update.jsp"><li>Contact us</li></a>
	</ul>
	</nav>
	
	 
<div class="bodyy">	

	<div class="banner-area" >
			<a href="myAccount1.jsp">
				<span id="nav1" class="btn-area">
					<h2><i class="fa fa-home"></i>MY ACCOUT</h2>                                                     
				</span>
			</a>
		</a>
			<a href="logout1.jsp">
				<span id="nav2" class="btn-area">
					<h2><i class="fa fa-sign-out" ></i>Account Logout</h2>
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





<%!
	String user;
%>

<%
	user=(String)session.getAttribute("user");

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
				String nameUser=(String)rs1.getString("Shop_name");
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
			
			String phoneSeller=(String)session.getAttribute("Phone_seller");
			System.out.println("Selar----->>>"+phoneSeller);
			int i=0;
			String query="select DISTINCT Book_type from books_oldnew where Phone='"+phoneSeller+"'";
			System.out.println("updateBookDetail.jsp---->"+query);
		
			%>
			<h3>Contact Form For Book Update</h3>

			<div class="container">
			<%
			out.println("<form name='myForm' method='post' action='contactData.jsp'>");
			
			String msg=(String)session.getAttribute("msg");
			if(msg!=null)
			{
				
				out.println("<center><span style='color:red; font-size:20px;   left:15%; font-family:italic;' name='msg' id='msg'>"+msg+"</span></center>");
				session.removeAttribute("msg");		
			}
			
			%>
			 <label for="fname">First Name</label>
				<input type="text" id="fname" name="firstname" placeholder="Your name.." >

				<label for="lname">Last Name</label>
				<input type="text" id="lname" name="lastname" placeholder="Your last name.." >
						
			<%
			out.println("<label for='bt'>Book Type</label>");
			out.println("<select id='book' name='book' required onchange='funAjax3(this.value)'>");
				out.println("<option >Select</option>");
				ResultSet rs=stmt.executeQuery(query);
				
				while(rs.next())
				{
					String stt=rs.getString("Book_type");
					out.println("<option>"+stt+"</option>");
				}
				
			out.println("</select>");
			
			
			
			con.close();
		}
		catch(Exception ex)
		{
			out.println(ex);
		}


		out.println("<label for='bi'>Book Id</label>");
		out.println("<select id='bid' name='bid' required onchange='titltData()'>");
				out.println("<option>select</option>");
		out.println("</select>");
	
			
		%>	
			<!--<div id="up"></div>	-->
		<label for="subject">Subject</label>
		<textarea id="subject" name="subject" placeholder="Write something what you want to change in your book.." style="height:200px" ></textarea>

		<input type="submit" value="Submit" onClick="return validRegister();">		
				
		<%
		
			out.println("</form>");
		
	}
	else{
		response.sendRedirect("delar_register.jsp");
	}

%>


	
</body>
</html>
