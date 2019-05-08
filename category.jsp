<%@page import="java.sql.*"%>

<html>
	<head>
        <meta charset="utf-8">
		<title>Book category</title>
		
        <link rel="stylesheet" type="text/css" href="css/style.css">
		 <link rel="stylesheet" type="text/css" href="css/icons.css">
		 <link rel="stylesheet" type="text/css" href="css/search.css">
    
		 <link rel="stylesheet" type="text/css" href="css/category.css">
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
		
		<a href="contactUs.jsp"><li>Contact us</li></a>
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
	<%!
		Integer count=0;
	%>	
						
						<%
						String user=(String)session.getAttribute("user");
						
						if(user!=null)
						{
						
					//	 count=(Integer)session.getAttribute("Cartcount");
						
						
						
						
						
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
								   
								
						<%}%>
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
	
	<!--
	<div class="topnav">
	 
	  <div class="search-container">
		<form name="myForm" action="search.jsp" method="POST">
		  <input type="text" name="search" id="search" placeholder="Search.." >
		  <button type="submit"><i class="fa fa-search"></i></button>
		</form>
	  </div>
	</div>
	-->
	 <div class="searchbar">
		<form  name="myForm" action="search.jsp" method="POST">
			<input type="text" name="search" id="search" placeholder="Enter Book Title" required>
			<button><i class="fa fa-search"></i></button>
		</form>
	</div>
	
	
<!--	
		
	<table width="993" height="330" border="0">
		<tr>
			<td width="205" height="89"></td>
			<td width="772">
				<table width="723" height="88" border="0">
     
					<tr>
						<td>
							
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table width="251" height="482" border="0">
					<tr>
						<td height="184">
							<table width="242" height="171" border="0">
								<tr>
									<td class="normal"><b>Technical Book</b></td>
								</tr>
							
								<tr>
									<td >
										<form class="books" action="processCategory.jsp">
											<button name="book" value="New_book" >New Book</button>
										</form>
									</td>
								</tr>
								<tr>
									<td>
										<form class="books1" action="processCategory.jsp">
											<input type="hidden" name="type1" value="tech" /><input type="hidden" name="book" value="Old_book" /><input type="image" src="images/old.png" />
										</form>
									</td>
								</tr>
								</div>
							</table>
						</td>
					</tr>
					<tr>
						<td height="201">
							<table width="243" height="180" border="0">
								<tr>
									<td width="233" class="normal1"><b>Non-Technical Books</b></td>
								</tr>
								 <tr>
									<td>
										<form class="books2" action="processCategory.jsp">
											<input type="hidden" name="type1" value="tech" /><input type="hidden" name="book" value="New_book" /><input type="image" src="images/new.png" />
										</form>
									</td>
								</tr>
								<tr>
									<td>
										<form class="books3" action="processCategory.jsp">
											<input type="hidden" name="type1" value="tech" /><input type="hidden" name="book" value="Old_book" /><input type="image" src="images/old.png" />
										</form>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					
				</table>
			</td>
		
		</tr>
		
	</table>
	
	-->
	
	
	<div class="row">
		<div class="sec">
			<h2>Technical Books</h2>
			<p> 
			 To realize that new world we must prefer the values of freedom and equality above all other values - above personal wealth, technical power and nationalism. 
			<u><i style="color:green;">Herbert Read</i></u><br>

Technical expertise is only a tiny portion of what it takes to be a successful employee and, particularly, a successful leader. 
 <u><i style="color:green;">Joanie Connell</i></u>
			<br>click here to get many more books:-
			</p>
			
			<br>
			<label for="modal-1" class="btn">Click here</label>
		</div>
		<div class="sec">
			<h2>Non-Technical books</h2>
			<p> Non-technical books are books whose included Nom-technical subjects and 
			Govt. exams prepration like S.S.C C.G.L BANK PO. UPSC ESE CIVIL Services 
			and many more and it also included many related Non-technical books
			like History Geography Civics Political Science and many more..
			<br>click here to get many more books:-
			</p>
			<br>
			<label for="modal-2" class="btn">Click here</label>
		</div>
	</div>
	
	<input type="checkbox" id="modal-1" class="hs">
	<div class="modal-wrapper">
		<div class="modelbox">
			<div class="model-content">
				<div class="modal-header">
					<center><h2 ><i>"Select whose books which You Want"</i></h2></center>
					
						<label for="modal-1" class="btn-close">X</label>
				</div>
				
				<div class="model-content-body">
					<form  action="processCategory.jsp">
						<div class="books" >	
								<button name="book"  value="New_book">New Book</button>
						</div>	
					</form>
					<form class="books1" action="processCategory.jsp">
								<button name="book"	value="Old_book">Old Book</button>
										</form>
								
					
					<p>
					
					dhghh dlgjasdkjkl jgqeetiouvklk fl fklfgklj kljrkk cvbr 
					gdgdf  dfkgkdl kl  dlgdfl j flkbfl j kjjklghsdlfsadijxnvvbvhh 
					sddgi ddghck deri  dklhrvklxc d'fv dbh  n 
					v sdffbhf  hhdfhio hfidherihfo xoe kl nvjbfxhrgerkvvm bbhba;lja;fkoasd
					</p>
						<br><br><br><br>
				</div>
			</div>
		</div>
	</div>

	
	<input type="checkbox" id="modal-2" class="hs">
	<div class="modal-wrapper">
		<div class="modelbox">
			<div class="model-content">
				<div class="modal-header">
					<center><h2 ><i>"Select whose books which You Want"</i></h2></center>

				<label for="modal-2" class="btn-close">X</label>
				</div>
				
				<div class="model-content-body">
					<form class="books2" action="processCategory.jsp">
						<button name="book" value="New_book">New Book</button>
					</form>
					<form class="books3" action="processCategory.jsp">
							<button name="book"	value="Old_book">Old Book</button>
					</form>							
					
					<p> 
					technical books are books whose included technical subjects and
						like thermodynamics strength of material computer graphich
					and many more and it also included many related techniical branches books
						like computer science, electronics, mechnical , civil, electrical and many more..
					click buy now to get many more books:-
					</p>
						<br><br>
				</div>
			</div>
		</div>
	</div>
	
	</body>

</html>