<html>
	<head lang="en">
		<title>E-commerce website</title>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
        
		<!--<script src="java_script/validRegistration.js"></script>-->
		<link rel="stylesheet" type="text/css" href="css/delar_registration.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
		
        <script src="java_script/jquery-1.10.2.min.js"></script>
        <script src="java_script/JQUERY%20Main.js"></script>
		
			<script>
		function validate()
		{
			var euser=document.login.semail.value;
			var epwd=document.login.spassword.value;
			if((euser=="") || (epwd==""))
			{
				swal({
					title:"E-mail or Password Missing!!!",
					text:"Please fill the empty field!!!",
					icon:'warning',
				});
				//document.login.semail.focus();
				return false;
				
			}
			else{
				swal({
					title:"Login successfull...",
					text:"Welcome ..."+euser,
					icon:'success',
					button:"Thank You",
				});
			}
			
			
		}
		
		
		
	</script>
	
	
	
	</head>
	
	<body>
       			
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
                            <div class="login_regis_btn">
                                <a href="index.jsp">HOME</a>
							<!-- <a href="registration.jsp">Register</a>-->
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

            <div class="left_content">
               		<span class="txt" >DEALER REGISTER PANEL</span>			
			</div>
                
	<div id="box">
        <div id="main"></div>
		 <form name="login" action="login_seller.jsp" method="POST" >
             <div id="loginform">
               <h1 id="login">DEALER LOGIN</h1>                
			<input type="text" placeholder="Email" class="contact_input" id="semail" name="semail" >
     <input type="password" placeholder="Password"  class="contact_input" id="spassword" name="spassword">
	 <%
						String msg=(String)session.getAttribute("msg");
						System.out.println("Book Title:-"+msg);
									
						if(msg!=null) 
						{
							out.println("<span style='color:red; font-size:15px;' name='msg' id='msg'>"+msg+"</span><br>");
							session.removeAttribute("msg");
										
						}
					
					
					%>
       <button id="btn1" class="register" onClick="return validate();">LOGIN</button>
			</div>
	                </form>
		          <form name="delar" action="deler_register_data.jsp"  method="post">
            <div id="signupform">
		<h1 id="signup">Registration Signup</h1>                
			<input type="text" placeholder="Name"  class="contact_input" name="sname" id="fname" >
			<input type="text"  placeholder="Email" class="contact_input" name="email" id="email"  >
            <input type="date" placeholder="Date of birth"  class="contact_input" name="dob" id="dob" required></td>
            <input type="number" placeholder="Phone No."  class="contact_input" maxlength="10" name="phone" id="phone" pattern="^\d{4}\d{3}\d{3}$" title="Phone Number (format: xxxx-xxx-xxx)" placeholder="Enter Phone" required>
            <input type="text" placeholder="State"  class="contact_input" name="state" id="state" >
            <input type="text"  placeholder="City" class="contact_input" name="city" id="city" >
            <input type="number"  placeholder="Pin" class="contact_input" name="pin" id="pin" >
             <input type="password" placeholder="Password"  class="contact_input" name="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
               <textarea rows="5" cols="50" placeholder="Enter shop address..." class="contact_input" name="address" id="address" ></textarea>
                 
                               
				<button id="btn1" class="register" onClick="return delarRegister();">register</button>
                          
		</div>				
	</form>
		
	<script>
		function delarRegister()
		{
			var name=document.delar.sname.value;
			var mail=document.delar.email.value;
			var dob=document.delar.dob.value;
			var phone=document.delar.phone.value;
			var state=document.delar.state.value;
			var city=document.delar.city.value;
			var pin=document.delar.pin.value;
			var pwd=document.delar.password.value;
			var address=document.delar.address.value;
			
			if((name=="") || (mail=="") || (dob=="") || (phone=="") || (state=="") || (city=="") || (pin=="") || (pwd=="") || (address==""))
			{
				swal({
					title:"Some field are missing!!!",
					text:"Please fill the desired field!!!",
					icon:'warning',
				});
				
				return false;
			}
			
			else if((name.value>3) || (name.value<25))
			{
				swal({
					title:"Name field!!!",
					text:"Name between 3 to 25 character!!!",
					icon:'warning',
				});
				
				return false;
			}
			
			else if(mail.indexOf('@') <=0) 
			{
				swal({
						title:"Invalid email....",
						text:"@ Invalid postion",
						icon:'warning',
				});
				return false;
			}
			
			else if((mail.charAt(b.length-4)!='.') && (mail.charAt(b.length-3)!='.')) 
			{
				swal({
					title:"Invalid email",
					text:". Invalid position...",
					icon:'warning',
				});
				return false;
			}
			
			var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
			else if(phone.value.match(phoneno))
			{
				swal({
					title:"Phone field!!!",
					text:"Please enter a valid phone number!!!",
					icon:'warning',
				});
				
				return false;
			}
			
			else if((pin.value>0) || (pin.value<7))
			{
				swal({
					title:"PIN Missing!!!",
					text:"Pin length must be 6 digit!!!",
					icon:'warning',
				});
				
				return false;
			}
			
			var lowerCaseLetters = /[a-z]/g;
			var upperCaseLetters = /[A-Z]/g;
			var numbers = /[0-9]/g;
			else if((pwd.value.length>=8) || (pwd.value.match(upperCaseLetters)) || (pwd.value.match(numbers)) || (pwd.value.match(lowerCaseLetters)))
			{
				swal({
					title:"Invalid password",
					text:"Password length minimum 8 character and contain capital,small letter and digit",
					icon:'warning',
				});
				return false;
			}
			
			else{
				swal({
					title:"Registration successfull...",
					text:"Thank you for becomming a part of PALOS"+name,
					icon:'success',
					button:"Thank you",
				});
				
			}
			
		}
	</script>

	   
		 <div id="login_msg">Have an account?</div>
            <div id="signup_msg">Don't have an account?</div>
       	<button id="login_btn">LOGIN</button>
            <button id="signup_btn">SIGN UP</button>
	</div> 
               <div class="clear"></div>
		    
            
    </div>

      </div>     
         
		 

		
		


		
	</body>
	
	<%
		String email=(String)session.getAttribute("email");
		System.out.println("E-mail is:-"+email);
		if(email!=null)
		{
			out.println("<center><span style='color:red; font-size:30px;' top:30px; font-size:30px;  name='msg' id='msg'>"+email+"</span></center>");
			session.removeAttribute("email");
		}
	
	
	
	%>
</html>
