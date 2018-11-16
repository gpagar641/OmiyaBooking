<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Omiya Booking</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />


  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	<!-- <link href='https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700italic,900,700,900italic' rel='stylesheet' type='text/css'> -->

	<!-- Stylesheets -->
	<!-- Dropdown Menu -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/superfish.css">
	<!-- Owl Slider -->
	<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css"> -->
	<!-- <link rel="stylesheet" href="css/owl.theme.default.min.css"> -->
	<!-- Date Picker -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.min.css">
	<!-- CS Select -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cs-select.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cs-skin-border.css">

	<!-- Themify Icons -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
	<!-- Flat Icon -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
	<!-- Icomoon -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flexslider.css">
	
	<!-- Style -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<div id="fh5co-wrapper">
	<div id="fh5co-page">
	<div id="fh5co-header">
	<header id="fh5co-header-section">
			<%-- <div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
					<h1 id="fh5co-logo"><a href="${pageContext.request.contextPath}/">Omiya</a></h1>
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li><a class="active" href="${pageContext.request.contextPath}/">Home</a></li>
							
							<li><a href="#hotels">Hotels</a></li>
							<li><a href="#contacts">Contact</a></li>
						</ul>
					</nav>
				</div>
			</div> --%>
			<header id="fh5co-header-section" style="background-color:#008433;">
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo">
							<a href="${pageContext.request.contextPath}/">Omiya</a>
						</h1>
						<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li><a class="active" href="${pageContext.request.contextPath}/">Home</a></li>


							<li><a href="${pageContext.request.contextPath}/">Hotels</a></li>
							<li><a href="${pageContext.request.contextPath}/showContact">Contact</a></li>
						</ul>
						</nav>
					</div>
				</div>
				</header>
		</header>
		
	</div>
	<!-- end:fh5co-header -->
	<div class="fh5co-parallax" style="background-image: url(${pageContext.request.contextPath}/resources/images/contact-us.jpg);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
					<div class="fh5co-intro fh5co-table-cell">
						
						<!-- <p>Made with love by the fine folks at <a href="http://freehtml5.co">FreeHTML5.co</a></p> -->
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-contact-section">
		<div class="row">
			<div class="col-md-6">
				<div id="map" class="fh5co-map"></div>
			</div>
			<div class="col-md-6">
				<div class="col-md-12">
					<h3>Our Address</h3>
					<!-- <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p> -->
					<ul class="contact-info">
						<li><i class="ti-map"></i>198 West 21th Street, Suite 721 New York NY 10016</li>
						<li><i class="ti-mobile"></i>+ 1235 2355 98</li>
						<li><i class="ti-envelope"></i><a href="#">info@omiyabooking.com</a></li>
						<li><i class="ti-home"></i><a href="#">www.omiyabooking.com</a></li>
					</ul>
				</div>
				<form method="POST" action='sendMailToContactUs'>
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control" name="name" placeholder="Name">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control" name="email" placeholder="Email">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<textarea name="" class="form-control" id="" cols="30" name="message" rows="7" placeholder="Message"></textarea>
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<input type="submit" value="Send Message" class="btn btn-primary">
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
	

	<div>	 <footer id="footer" class="fh5co-bg-color-dark"style="background-color: #008433;height:15px;">  
		<div class="container" >
			<div class="row" id ="contacts">
				<div class="col-md-3" align="center">
					<div class="copyright">
						<p style="color:white;"><small >&copy; 2018 All Rights Reserved. <br>
						Designed by <a href="http://v3datasolution.com" target="_blank">V3 Data Solutions</a> 
					</div>
				</div>
				<div class="col-md-6">
					<div class="row">
						
					
					</div>
				</div>
				<div class="col-md-3">
					<ul class="social-icons">
						<li>
							<a href="#"><i class="icon-twitter-with-circle"></i></a>
							<a href="#"><i class="icon-facebook-with-circle"></i></a>
							<a href="#"><i class="icon-instagram-with-circle"></i></a>
							<a href="#"><i class="icon-linkedin-with-circle"></i></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
 	</footer>
 





		</div>
	

	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->
	
	<!-- Javascripts -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- Dropdown Menu -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Owl Slider -->
	<!-- // <script src="js/owl.carousel.min.js"></script> -->
	<!-- Date Picker -->
	<script src="js/bootstrap-datepicker.min.js"></script>
	<!-- CS Select -->
	<script src="js/classie.js"></script>
	<script src="js/selectFx.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Google Map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="js/google_map.js"></script>

	<script src="js/custom.js"></script>

</body>
</html>