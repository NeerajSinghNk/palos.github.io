<%@page import="java.sql.*"%>
    
<html>
	<head>
		<title>Book Detail</title>
		<meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	  
		
		<link rel="stylesheet" type="text/css" href="css/stylecategory.css">
		 <link rel="stylesheet" type="text/css" href="css/iconcatgory.css">

	  <link rel="stylesheet" type="text/css" href="css/password.css">
	
		<meta charset="utf-8">
		  <meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

	
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
			width: 300px;
			height:50px;
			text-decoration: none;
			color: white;
			margin-left: 100px;
			margin-top: 30px;
			transition: 0.6s ease-in;x;
	}
	.hamburger{
		left:1rem;
		top:1rem;
		width:2.5rem;
		height:1.7rem;
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
		</a>
			<a href="logout.jsp">
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
                </div>
        </div>
	
<%
	 System.out.println("booksTableAdmin.jsp");
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
   
   
   
   try
   {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from books_oldnew");
        
		out.println("<div class='container'>");
		out.println(" <input class='form-control' id='myInput' type='text' placeholder='Search..'><br>");
		
        out.println("<table class='table table-bordered table-striped'><thead><tr><th>Book id</th><th>Title</th><th>Auther</th><th>Published</th><th>Phone</th><th>Type</th><th>Price</th><th>Image</th></tr></thead>");
   
        while(rs.next())
        {
            String title=(String)rs.getString("Title");
            String bd=(String)rs.getString("Book_id");
            
            String auth=(String)rs.getString("Auther");
            String pub=(String)rs.getString("Publisher");
            
            String date_pub=(String)rs.getString("Date_published");
            String rate=(String)rs.getString("Price");
            String contact=(String)rs.getString("Phone");
            String bookimg=(String)rs.getString("Book_image");
            String book_type=(String)rs.getString("Book_type");
   
   
   
            out.println("<tbody id='myTable'><tr >");
				out.println("<td>"+bd+"</td>");
				out.println("<td>"+title+"</td>");
				out.println("<td>"+auth+"</td>");
				out.println("<td>"+pub+"</td>");
				out.println("<td>"+contact+"</td>");
				out.println("<td>"+book_type+"</td>");
				out.println("<td><span>&#x20B9</span>"+rate+"</td>");
				%>
				<td><img src="book_images//<%=bookimg%>" width="70" height="70"></td>
				
<%				
				
				
				
            out.println("</tr></tbody>");
        }
   out.println("</table></div>");
   rs.close();
   }
  catch(Exception ex)
  {
	  out.println(ex);
  }
   }
   
   else{
	   response.sendRedirect("login_form.jsp");
   }





%>


				<script>
					$(document).ready(function(){
					  $("#myInput").on("keyup", function() {
						var value = $(this).val().toLowerCase();
						$("#myTable tr").filter(function() {
						  $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
						});
					  });
					});
				</script>
</body>

</html>