<html>
	<head>
        <title>User Registration!</title>
        <meta></meta>
        <link rel="stylesheet" type="text/css" href="css/style.css">
		<script src="java_script/validRegistration.js"></script>
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
                        <div class="header_right">
                            <div class="login_regis_btn">
                                <a href="login_form.jsp">Login/</a>
                                <a href="registration.jsp">Register</a>
                            </div>
                            <div class="cart_btn">
                                <a href="#"><img src="images/img10.png"><span>Cart(0)</span></a>
                            </div>
                        </div>
                    </div>    
                </div>
        </div>
        <div class="header">
            <div class="container">
                <div class="logo">
                    <img src="images/logo.png">
                </div>
                <div class="navbar">
                    <a href="index.jsp">Home</a>
                    <a href="#">Buy a book</a>
                    <a href="#">Top writer</a>
                    <a href="#">Study corner</a>
                    <a href="delar_register.jsp">Delar Registration</a>
                    <a href="#">Contact us</a>
                </div>
            </div>
        </div>
        

		<div class="center_content">
			<center>
            <div class="left_content">
                <div class="title">
                    <span class="title_icon">
                        <img src="images/bullet1.gif" alt="" title="">
                    </span>Register
                </div>
                <div class="feat_prod_box_details">
                    <p class="detail">
                        Complete your profile by filling in this account creation form.
                    </p>
                    <div class="contact_form">
                        <div class="form_subtitle">
                            Create New Account
                        </div>
						<table border="0">
                        <form name="register" action="user_registration_data.jsp"  method="post">
                            <tr>
                            <div class="form_row">
                                <label class="contact"><strong><td>Name:</td></strong></label>
                                <td><input type="text" class="contact_input" name="fname" id="fname" onchange="return validName();" required></td>
                            </div>
                            </tr>
							<tr>
							<div class="form_row">
                                <label class="contact"><strong><td>E-mail:</td></strong></label>
                                <td><input type="text" class="contact_input" name="email" id="email" onchange="return validForm();" required></td>
                            </div>
                            </tr>
							<tr>
                            <div class="form_row">
                                <label class="contact"><strong><td>Password:</td></strong></label>
                                <td><input type="password" class="contact_input" name="password" id="password" required></td>
                            </div>
                            </tr>
							<tr>
                            <div class="form_row">
                                <label class="contact"><strong><td>Phone:</td></strong></label>
                                <td><input type="text" class="contact_input" maxlength="10" size="10" required name="phone" id="phone"></td>
                            </div>
                            </tr>
							<tr>
							<div class="form_row">
                                <label class="contact"><strong><td>Gender:</td></strong></label>
                                <td><select id="gender" name="gender" required>
									<option value="Select">Select</option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
								</select></td>
							</div>
							</tr>
							<tr>
							<div class="form_row">
                                <label class="contact"><strong><td>Age:</td></strong></label>
                                <td><input type="number" class="contact_input" maxlength="2" maxsize="2" name="age" id="age" required></td>
                            </div>
							</tr>
							<tr>
							<div class="form_row">
                                <label class="contact"><strong><td>PIN:</td></strong></label>
                                <td><input type="number" class="contact_input" maxlength="6" maxsize="6" name="pin" id="pin" required></td>
                            </div>
							</tr>
							<tr>
							<div class="form_row">
                                <label class="contact"><strong><td>Address:</td></strong></label>
                                <td><textarea  class="contact_input" name="address" id="address" rows="5" cols="50" placeholder="Enter your address..." required></textarea></td>
                            </div>
							</tr>
							<tr>
                            <div class="form_row">
                                <div class="terms">
                                    <td><input type="checkbox" id="term" required></td>
                                    <td>I agree to the <a href="terms.html" target="_blank">terms &amp; conditions</a></td>
                                </div>
                            </tr>  
								<tr>
                                <div class="form_row">
                                    <td><input type="submit" class="register" value="Register" ></td>
                                </div>
								</tr>
                            </div>
                        </form>
						</table>
                    </div> 
                </div>
            </div>
			</center>
            <div class="clear"></div>
        </div>
		
            
        <div class="right_content"> 
		<center>
            <div class="languages_box">
                <span class="red">Welcome, Guest!</span>
            </div>
              
            <div class="login">
                <a class="selected" href="login_form.jsp">Login</a>
            </div> 
             
              
              
              
              
              
              
              
              
            <div class="clear"></div>  
        </center>      
        </div>
			

		
	</body>
	
	<%
		String email=(String)session.getAttribute("email");
		System.out.println("E-mail is:-"+email);
		if(email!=null)
		{
			out.println("<span style='color:red; font-size:20px;' name='msg' id='msg'>"+email+"</span>");
			session.removeAttribute("email");
		}
	
	
	
	%>
</html>
