<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/forgot-password.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<div id="highlighted" class="hl-basic hidden-xs">
   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-9 col-sm-offset-3 col-md-9 col-md-offset-3 col-lg-10 col-lg-offset-2">
            <h1>
               Forgot Password
            </h1>
         </div>
      </div>
   </div>
</div>

<div id="content" class="interior-page">
<div class="container-fluid">
<div class="row">
<!--Sidebar-->
<div class="col-sm-3 col-md-3 col-lg-2 sidebar equal-height interior-page-nav hidden-xs">
   <div class="dynamicDiv panel-group" id="dd.0.1.0">
      <div id="subMenu" class="panel panel-default">
         <ul class="subMenuHighlight panel-heading">
            <li class="subMenuHighlight panel-title" id="subMenuHighlight">
               <a id="li_291" class="subMenuHighlight" href="login_form.jsp"><span>Register</span></a>
            </li>
         </ul>
         <ul class="panel-heading">
            <li class="panel-title">
               <a class="subMenu1" href="forgotPassword.jsp"><span class="subMenuHighlight">Forgot Password</span></a>
            </li>
         </ul>
         <ul class="panel-heading">
            <li class="panel-title">
               <a class="subMenu1" href="login_form.jsp"><span>Login</span></a>
            </li>
         </ul>
      </div>
      <div class="item item-nopad item-noborder item-gold">
         <a style="padding: 5% 0px;" href="" class="btn btn-primary btn-block" role="button">LEARN MORE</a> 
      </div>
   </div>
</div>

<!--Content-->
<div class="col-sm-9 col-md-9 col-lg-10 content equal-height">
  <div class="content-area-right">
   <div class="content-crumb-div">
      <a href="index.jsp">Home</a> / <a href="">Your Account</a> / Forgot Password
   </div>
      <div class="row">
         <div class="col-md-5 forgot-form">
			<form action="forgot.jsp" method="POST">
            <p>
               Please enter your email address below and we will send you information to change your password.
            </p>
            <label class="label-default" for="un">Email Address</label> <input id="email_addy" name="email_addy" class="form-control" type="text"><br>
            <input type="submit" id="mybad" class="btn btn-primary" role="button" value="RECOVER">
			
			
			
			</form>
         </div>
         <div class="col-md-5 forgot-return" >
            <h3>
               <%
						String pass=(String)session.getAttribute("pass");
						System.out.println("password:-"+pass);
									
						if(pass!=null) 
						{
							out.println("<span style='color:red; font-size:15px;' name='msg' id='msg'>"+pass+"</span><br>");
							session.removeAttribute("pass");
										
						}
					
					
					%>
            </h3>
            
         </div>
      </div>
   </div>
</div>
