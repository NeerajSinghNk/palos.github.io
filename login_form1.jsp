<html>
	<head>
        <title>User Login!</title>
        <meta></meta>
        <link rel="stylesheet" type="text/css" href="css/style.css">
		<script src="java_script/validRegistration.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
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
                    <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>My account</div>

                    <div class="feat_prod_box_details">
                        <p class="details">
                            Please provide your username and password to login to your account!
                        </p>

                        <div class="contact_form">
						<table border="0">
                            <tr><div class="form_subtitle"><td>Login into your account</td></div></tr>
                            <form name="login" action="login_seller.jsp" method="POST" onsubmit="return validForm1();">
                                <tr>
                                <div class="form_row">
                                    <label class="contact"><strong><td>Username:</td></strong></label>
                                    <td><input type="text" class="contact_input" id="semail" name="semail" ></td>
                                </div>
								</tr>
								<tr>
                                <div class="form_row">
                                    <label class="contact"><strong><td>Password:</td></strong></label>
                                    <td><input type="password" class="contact_input" id="spassword" name="spassword"></td>
                                </div>
								</tr>
								<tr>
                                <div class="form_row">
                                    <td><input type="submit" class="register" value="Login"></td>
                                </div>
								</tr>
                            </form>
						</table>
                        </div>

                    </div>


                    <div class="clear"></div>
                </div><!--end of left content-->
			</center>
                
                   



                <div class="clear"></div>
            </div><!--end of center content-->
			
			

		
	</body>
</html>