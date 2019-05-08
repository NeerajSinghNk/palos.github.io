<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" type="text/css" href="css/style.css">
		<link href="css/Main.css" rel="stylesheet"/>
        <script src="java_script/jquery-1.10.2.min.js"></script>
        <script src="java_script/JQUERY%20Main.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<!--<script src="java_script/validRegistration.js"></script>-->
	<style>
		#message {
  display:none;
  background: #f1f1f1;
  color: #000;
  position: relative;
  padding: 20px;
  margin-top: 10px;
}

#message p {
  padding: 10px 35px;
  font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}

.valid:before {
  position: relative;
  left: -35px;
  content: "✔";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
}

.invalid:before {
  position: relative;
  left: -35px;
  content: "✖";
}
	
	</style>

    <title>Login System</title>
</head>
<body>
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
	

<div id="box">
        <div id="main"></div>
            
			<form name="login" action="${pageContext.request.contextPath}/login.jsp" method="POST">
	 
            <div id="loginform">
               
			   <h1 id="login">LOGIN</h1>                
					<input type="text" class="contact_input" id="email" name="email"  placeholder="Enter Username">
					<input type="password" class="contact_input" id="password" name="password" placeholder="Enter Password">
					
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
				<a href="forgotPassword.jsp">Forgot Password?</a>
			</div>
			
		</form>

	<script>
			
		function validate()
		{
			
			var user=document.login.email.value;
			var pwd=document.login.password.value;
			if((user=="") || (pwd==""))
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
		<div class="container">		
			<form name="myForm" action="user_registration_data.jsp"  method="POST">
	
		<div id="signupform">
		<h1 id="signup">REGISTER</h1>
		    		
				<input type="text" class="contact_input" name="fname" id="fname" placeholder="Enter Username">
                <input type="text" class="contact_input" name="email" id="email"  placeholder="Enter Mail-ID" >
				<input type="password" class="contact_input" name="password" id="password" value="" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
				<input type="text" class="contact_input" maxlength="10" size="10" name="phone" id="phone" value="" pattern="^\d{4}\d{3}\d{3}$" title="Phone Number (format: xxxx-xxx-xxx)" placeholder="Enter Phone" required>
			  
				<input type="number" class="contact_input" maxlength="2" name="age" id="age" placeholder="Enter Age" required>
				<input type="number" class="contact_input" maxlength="6" name="pin" id="pin" placeholder="Enter Pin" title="Please enter a Zip Code" pattern="title="Please enter pin" pattern="^\s*?\d{5}(?:[-\s]\d{4})?\s*?$" required>
				<input class="contact_input" name="address" id="address" rows="5" cols="50" placeholder="Enter your address..." required></input>
				<select id="gender" name="gender" id="gender">
					<option value="select">Select</option>
					<option value="Male">Male</option>
					<option value="Female">Female</option>
				</select>
				
                
                <button id="btn2" class="register" onClick="return validRegister();">SIGNUP</button>	   	   
           
       </div>
	  
	</form>
	</div> 
	
	<div id="message">
	  <h3>Password must contain the following:</h3>
	  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
	  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
	  <p id="number" class="invalid">A <b>number</b></p>
	  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
	</div>
	
		<script>
		
		function validRegister()
		{
			var name= document.myForm.fname.value;
			var mail=document.myForm.email.value;
			var password=document.myForm.password.value;
			var phone=document.myForm.phone.value;
			var pin=document.myForm.pin.value;
			var address=document.myForm.address.value;
			var gender=document.myForm.gender.value;
			var pattern=/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/;
			
			
			if((name=="") || (mail=="") || (password=="") || (phone=="") || (pin=="") || (pin=="") || (address=="") || (gender==""))
			{
				swal({
					title:"Empty places!!!",
					text:"Please fill the empty field!!!",
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
			
			
			var lowerCaseLetters = /[a-z]/g;
			var upperCaseLetters = /[A-Z]/g;
			var numbers = /[0-9]/g;
			else if((password.value.length>=8) || (password.value.match(upperCaseLetters)) || (password.value.match(numbers)) || (password.value.match(lowerCaseLetters)))
			{
				swal({
					title:"Invalid password",
					text:"Password length minimum 8 character and contain capital,small letter and digit",
					icon:'warning',
				});
				return false;
			}
			
			var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
			else if(phoneno.test(phone.value))
			{
				swal({
					title:"Phone field!!!",
					text:"Please enter a valid phone number!!!",
					icon:'warning',
				});
				
				return false;
			}
			pattern_pin=/^d{6}$/;
			else if(!pattern_pin.test(pin.value))
			{
				swal({
					title:"PIN Missing!!!",
					text:"Pin length must be 6 digit!!!",
					icon:'warning',
				});
				
				return false;
			}
			
			else if(gender.value=="select")
			{
				alert("Please select gender...");
				
				gender.style.background="red";
				return false;
			}
			
			else{
				swal({
					title:"Registration successfull",
					text:"Thank you for becomming a part of PALOS..."+name,
					icon:'success',
					button:"Thank you...",
				});
				
			}
			
		}
		
		
		
		
				
	</script>
		
		
		<script>
		/*
			var myInput = document.getElementById("password");
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
		  if(myInput.value.length >= 8) {
			length.classList.remove("invalid");
			length.classList.add("valid");
		  } else {
			length.classList.remove("valid");
			length.classList.add("invalid");
		  }
		}
		*/
		
		</script>
		
	     
		 <div id="login_msg">Have an account?</div>
            <div id="signup_msg">Don't have an account?</div>
            
           
			<button id="login_btn">LOGIN</button>
            <button id="signup_btn">SIGN UP</button>
</div>	
	<%
		String email=(String)session.getAttribute("email");
		//System.out.println("E-mail is:-"+email);
		if(email!=null)
		{
			out.println("<span style='color:red; font-size:30px;  position:absolute; top:16%; left:15%; font-family:italic;' name='msg' id='msg'>"+email+"</span>");
			session.removeAttribute("email");
		}
	
	
	
	%>
</body>
</html>