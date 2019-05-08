<%@page import="java.sql.*"%>

<html>
	<head>
		<script src="java_script/sellOldBook.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
		
<link rel="stylesheet" type="text/css" href="css/stylecategory.css">
		 <link rel="stylesheet" type="text/css" href="css/iconcatgory.css">

		<link rel="stylesheet" type="text/css" href="css/form.css">
		<link rel="stylesheet" type="text/css" href="css/sellerbooks.css">

	<script src="java_script/validRegistration.js"></script>
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >

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
		<a href="myAccount1.jsp"><li >Home</li></a>
		
		<a href="delar-contact-form-update.jsp"><li>Contact us</li></a>
	</ul>
	</nav>
	
	 
<div class="bodyy">	

	<div class="banner-area" >
			<a href="myAccount1.jsp">
				<span id="nav1" class="btn-area">
					<h2><i class="fa fa-home"></i>My Account</h2>                                                     
				</span>
			</a>
		<a href="logout1.jsp">
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
	String user,ph;
%>

<%
	System.out.println("Sell_old_bookfor_user.jsp");
	user=(String)session.getAttribute("user");
	out.println("<title>Sell your book</title>");
	
	
	
	
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
		ResultSet rs=stmt.executeQuery("select * from seller_register where Shop_email='"+user+"'");
		int count=0;
		while(rs.next())
			{
				ph=(String)rs.getString("Phone");
				String dlr=(String)rs.getString("Shop_name");
				session.setAttribute("dlr",dlr);
		
						out.println("<center><h3>Book selling form...</h3></center>");
						out.println("<div>");
		
							out.println("<form action='selling_book_user.jsp' method='post' enctype='multipart/form-data' onsubmit='return SellUserBook();'>");
							
									out.println("<label class='contact'><strong>Book Title:</strong></label>");
									out.println("<input type='text' class='contact_input' id='book_title' name='book_title' required>");
									String book_tit=(String)session.getAttribute("book_tit");
									System.out.println("Book Title:-"+book_tit);
									if(book_tit!=null)
									{
										out.println("<span style='color:red; font-size:20px;' name='msg' id='msg'>"+book_tit+"</span><br>");
										session.removeAttribute("book_tit");
									}
									
									
									
									out.println("<label class='contact'><strong>Auther Name:</strong></label>");
									out.println("<input type='text' class='contact_input' id='auther_name' name='auther_name' required>");
								
									out.println("<label class='contact'><strong>Book Publisher:</strong></label>");
									out.println("<input type='text' class='contact_input' id='book_pub' name='book_pub' required>");
								
									out.println("<label class='contact'><strong>Date Published:</strong></label>");
									out.println("<input type='date' class='contact_input' id='date_pub' name='date_pub' required>");
								
									out.println("<label class='contact'><strong>Price:</strong></label>");
									out.println("<input type='number' class='contact_input' id='price' name='price' required>");
								
									out.println("<label class='contact'><strong>Phone:</strong></label>");
									out.println("<input type='number' class='contact_input' id='phone' name='phone' value='"+ph+"' required>");
								
									out.println("<label class='contact'><strong>Book Description:</strong></label>");
									out.println("<input type='text' class='contact_input' id='book_desc' name='book_desc' required>");
								
									out.println("<label class='contact'><strong>Last Buy Date:</strong></label>");
									out.println("<input type='date' class='contact_input' id='lbd' name='lbd' >");
								
									out.println("<label class='contact'><strong>Book Photo:</strong></label>");
									out.println("<input type='file' class='contact_input' id='book_photo' name='book_photo' required>");
								
									out.println("<label class='contact'><strong>Book Type:</strong></label>");
									out.println("<select name='book_type' id='book_typ' required>");
										out.println("<option value='Select'>Select</option>");
										out.println("<option value='Old_book'>Old</option>");
										out.println("<option value='New_book'>New</option>");
									out.println("</select>");
								
								out.println("<input type='submit' class='contact_input' value='Sell Book' >");
								
							out.println("</form>");
							out.println("</div>");
								
							
							
					
		}	
		
		
		
		con.close();
		
	}
	catch(Exception ex)
		{
			out.println(ex);
		}
		
	}
	else{
		response.sendRedirect("login_form1.jsp");
	}

%>


<%
	String phone1=(String)request.getParameter("phone");
		try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
				Statement stmt=con.createStatement();
				
				String query=" ";
				query="Select * from books_oldnew where Phone='"+ph+"' order by ID desc";
				System.out.println(query);
				ResultSet rs= stmt.executeQuery(query);
				int count=0;
				
				out.println("<div class='container'><table class='table table-bordered'><tr><th>Book id</th><th>Title</th><th>Auther</th><th>Description</th><th>Contact</th><th>Book Type</th><th>Price</th><th>Book</th></tr>");
				
				while(rs.next())
				{
					String bid=(String)rs.getString("Book_id");
					String title=(String)rs.getString("Title");
					String desc=(String)rs.getString("Description");
					String auth=(String)rs.getString("Auther");
					String pub=(String)rs.getString("Publisher");
					String datepub=(String)rs.getString("Date_published");
					String lbd1=(String)rs.getString("Last_buy_date");
					String price1=(String)rs.getString("Price");
					String phone2=(String)rs.getString("Phone");
					String bkimage=(String)rs.getString("Book_image");
					String btype=(String)rs.getString("Book_type");
					
					
					if(count==3)
					{
						out.println("</tr><tr>");
						count=0;
					}
					count++;
					
		%>
			
			<!--<td>
				<img src="book_images//<%=bkimage%>" height="80" width="80"><br>
				<b>Book Id:-</b><%=bid%><br>
				<b>Title:-</b><%=title%><br>
				<b>Auther:-</b><%=auth%><br>
				<b>Publisher:-</b><%=pub%><br>
				<b>Date Published:-</b><%=datepub%><br>
				<b>Last Buy Date:-</b><%=lbd1%><br>
				<b>Price:-</b><%=price1%><br>
				<b>Phone:-</b><%=phone2%><br>
				<b>Book Type:-</b><%=btype%><br>
				<b>Description:-</b><%=desc%><br>
				
				
				
			</td>	-->
			
			<tr>
				<td><%=bid%></td>
				<td><%=title%></td>
				
				<td><%=auth%></td>
				
				<td><%=desc%></td>
				
				<td><%=phone2%></td>
				
				<td><%=btype%></td>
				
				<td><span>&#x20B9</span><%=price1%></td>
				
				<td><img src="book_images//<%=bkimage%>" height="80" width="80"><br></td>
			
			</tr>
				
				
		
		
		<%
				}
				out.println("</table></div>");
				con.close();
			}
			catch(Exception ex)
			{
				out.println(ex);
			}

%>



	</div>
	</div>
	</body>
	</html>