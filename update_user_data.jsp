<%@page import="java.sql.*"%>
<html>
	<head>
        <meta charset="utf-8">
		<title>Change Password</title>
		
        <link rel="stylesheet" type="text/css" href="css/style.css">
		 <link rel="stylesheet" type="text/css" href="css/icons.css">
		 <link rel="stylesheet" type="text/css" href="css/password.css">
		<script src="java_script/validRegistration.js"></script>

	
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
	System.out.println("Sell_old_bookfor_user.jsp");
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
			
			
					%>
					
					
					<div class="container">
					<center><h3>Fill and Update form</h3></center>
						<form method='post' action='update_user.jsp'>
						
							
							<label for="usrname">Email</label>
							<input type='text' class='btn' name='email' value=<%=user%>" disabled>
							
							<label for="usrname">Current Password</label>
							<input type="password" name="current" required>
							
							
							<label for="usrname">New Password</label>
							<input type="password" name="new" id="password" required>
							
							<label for="usrname">Confirm Password</label>
							<input type="password" name="confirm" id="confirm_password"  required>
							<%
								String id=(String)session.getAttribute("id");
								
								if(id!=null)
								{
									out.println("<span style='color:red; font-size:20px;' name='msg' id='msg'>"+id+"</span><br>");
									session.removeAttribute("id");
								}
							%>
							
							<label for="usrname">Phone</label>
							<input type="text" name="phone" required>
							
							<label for="usrname">Address</label>
							<textarea rows='5' cols='30' name='address' id='address' placeholder='Enter your address...' required></textarea>
							<!--
							<div id="message">
							  <h3>Password must contain the following:</h3>
							  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
							  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
							  <p id="number" class="invalid">A <b>number</b></p>
							  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
							</div>
							-->
							<input type="submit" value="Change Password">
						
					</form>
				</div>	
					
					
					<script>
						var password = document.getElementById("password")
					   , confirm_password = document.getElementById("confirm_password");

						function validatePassword()
						{
						  if(password.value != confirm_password.value) 
						  {
							confirm_password.setCustomValidity("Passwords Don't Match");
						  } 
						  else
						  {
							confirm_password.setCustomValidity('');
						  }
						}

					password.onchange = validatePassword;
					confirm_password.onkeyup = validatePassword;
				
					
					/*
						var myInput = document.getElementById("psw");
						var letter = document.getElementById("letter");
						var capital = document.getElementById("capital");
						var number = document.getElementById("number");
						var length = document.getElementById("length");

						// When the user clicks on the password field, show the message box
						myInput.onfocus = function() {
						  document.getElementById("message").style.display = "block";
						}

						// When the user clicks outside of the password field, hide the message box
						myInput.onblur = function() {
						  document.getElementById("message").style.display = "none";
						}

						// When the user starts to type something inside the password field
						myInput.onkeyup = function() {
						  // Validate lowercase letters
						  var lowerCaseLetters = /[a-z]/g;
						  if(myInput.value.match(lowerCaseLetters)) {  
							letter.classList.remove("invalid");
							letter.classList.add("valid");
						  } else {
							letter.classList.remove("valid");
							letter.classList.add("invalid");
						  }
						  
						  // Validate capital letters
						  var upperCaseLetters = /[A-Z]/g;
						  if(myInput.value.match(upperCaseLetters)) {  
							capital.classList.remove("invalid");
							capital.classList.add("valid");
						  } else {
							capital.classList.remove("valid");
							capital.classList.add("invalid");
						  }

						  // Validate numbers
						  var numbers = /[0-9]/g;
						  if(myInput.value.match(numbers)) {  
							number.classList.remove("invalid");
							number.classList.add("valid");
						  } else {
							number.classList.remove("valid");
							number.classList.add("invalid");
						  }
						  
						  // Validate length
						  if(myInput.value.length >= 5) {
							length.classList.remove("invalid");
							length.classList.add("valid");
						  } else {
							length.classList.remove("valid");
							length.classList.add("invalid");
						  }
						}
						*/
					</script>
					
					
					
					<%
					
				
	}
	else{
		response.sendRedirect("login_form.jsp");
	}

%>
	</body>
</html>