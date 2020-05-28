<%@page import="java.sql.*"%>

<html>
	<head>
        <title>E-commerce website</title>
        <meta></meta>
        <link rel="stylesheet" type="text/css" href="css/style.css">
		<!--<link rel="stylesheet" type="text/css" href="css/slide.css">-->
		<link rel="stylesheet" type="text/css" href="css/imageslideshow.css">
		<!--<link rel="stylesheet" type="text/css" href="css/newlogo.css">-->
	
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
	
	<body >
		
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
		<a href="index.jsp"><li >Home</li></a>
		<a href="#"><li>Buy a book</li></a>
		<a href="#"><li>Top writer</li></a>
		<a href="#"><li>Study corner</li></a>
		<a href="delar_register.jsp"><li>Delar corner</li></a>
		<a href="#"><li>Contact us</li></a>
	</ul>
	</nav>
	
	 
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
                                <a href="login_form.jsp">Login/SignUp</a>
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
<!--	
<div class="marque">	

<div class="logooo">Prehistric And Latest</div> 
<div class="logooo"> 
  <span> Opus Store</span>
</div>

</div>-->

	
	
	
<div class="container" id="container">
		<ul>
			<li class="active"><img src="book4.jpg" alt="" ></li>
			<li ><img src="images/book4.jpg" alt=""  ></li>
			<li><img src="images/book3.jpg" alt=""  ></li>
			<li><img src="images/book1.jpg" alt="" ></li>
		</ul>
	</div>

 
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script>    
    
    $(document).ready(function(){
  var width = 1000;
	height = 500;
	var numberOfBlinds = 30;
	var margin = 2;
	var color = '#fff';
  gapHeight = 100;
    

	var container = $('#container');

	container.width(width).height(height);
	var blindWidth = width / numberOfBlinds;

  images = new Array();
	$('ul li', container).each(function() {
    images.push($(this)); 
  });

  images[0].addClass('active');
  activeImage = 0;

  for (var i = 0; i < numberOfBlinds; i++) {
    var tempEl = $(document.createElement('span'));
    var borders = calculateBorders();

    tempEl.css({
      'left': i * blindWidth,
      border: margin + 'px solid ' + color,
      borderTop: borders.borderWidthTop + 'px solid ' + color,
      borderBottom: borders.borderWidthBottom + 'px solid ' + color,
      'height': height,
      'width': blindWidth
    });
				
    container.prepend(tempEl);
  };

  blinds = $('span', container);
  setTimeout(animateBorders, 1000);
});

function calculateBorders() {
  var random = Math.floor((Math.random()*9)+1);
  var borderWidthTop = (random / 10) * gapHeight;
  var borderWidthBottom = gapHeight - borderWidthTop;

  return {borderWidthTop: borderWidthTop, borderWidthBottom: borderWidthBottom};
}

function animateBorders() {
  var changeOccuredOnce = false;

  blinds.animate({
    borderTopWidth: height / 2,
    borderBottomWidth: height / 2
  }, 1000, function() {
    if(!changeOccuredOnce) {
      images[activeImage].removeClass('active');
      activeImage = (activeImage + 1) % images.length;
      images[activeImage].addClass('active');
      setTimeout(animateBorders, 3000);
      changeOccuredOnce = true;
    }

    var borders = calculateBorders();

    $(this).delay(300).animate({
      borderTopWidth: borders.borderWidthTop,
      borderBottomWidth: borders.borderWidthBottom
    }, 1000);
  });
}
    
    
    
    
    
    </script>
	
	
<div class="container">
	<p>Prasoon jain</p>
	</div>
       </div>  
	</div>	
		
		
	</body>
</html>
