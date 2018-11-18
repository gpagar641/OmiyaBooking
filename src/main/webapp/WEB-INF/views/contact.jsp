<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
	
<title>Omiya</title>


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
	<div id="fh5co-header" style="position: fixed;
    left: 0;
    top: 0;
    width: 100%; padding-top: 0px;">
		<header id="fh5co-header-section" style="padding-top: 0px;">
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
			<header id="fh5co-header-section" style="background-color:#2887C8;">
				<div class="container">
					<%-- <div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo">
							<a href="${pageContext.request.contextPath}/">Omiya</a>
						</h1>
						<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li><a  href="${pageContext.request.contextPath}/">Home</a></li>


							<li><a href="${pageContext.request.contextPath}/">Hotels</a></li>
							<li><a class="active" href="${pageContext.request.contextPath}/showContact">Contact</a></li>
						</ul>
						</nav>
					</div> --%>
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo">
							<a href="${pageContext.request.contextPath}/"><strong style="color: cornsilk;">Omiya</strong><strong style="color: gold;">Booking.com</strong></a>
						</h1>
						<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li><a class="active" href="${pageContext.request.contextPath}/"><strong style="color: white">Home</strong></a></li>


							<li><a class="active" href="${pageContext.request.contextPath}/"><strong style="color: white">Hotels</strong></a></li>
							<li><a class="active" href="${pageContext.request.contextPath}/showContact"><strong style="color: white">Contact</strong></a></li>
						</ul>
						</nav>
					</div>
				</div>
				</header>
		</header>
		
	</div>
	<!-- end:fh5co-header -->
	<div class="fh5co-parallax" style="background-image: url(${pageContext.request.contextPath}/resources/images/contact-us.png);" data-stellar-background-ratio="0.5">
		<div class="overlay" style="position:inherit;"></div>
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
				<!-- <div id="map" class="fh5co-map"></div> -->
			</div>
			<div class="col-md-6">
				<div class="col-md-12">
					<h3>Our Address</h3>
					<!-- <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p> -->
					<ul class="contact-info">
						<li><i class="ti-map"></i>Flat no. 9, Vastushree Apartment Datta Mandir Road, Nashik Road, Nashik-422101</li>
						<li><i class="ti-mobile"></i>+ 91-9096000215</li>
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
	
<div>	 <footer id="footer" class="fh5co-bg-color-dark"style="background-color: #2887C8;height:15px;">  
		<div class="container" >
			<div class="row" id ="contacts">
				<div class="col-md-3" align="center">
					<div class="copyright">
						<p style="color:white;">Web Design &amp; Development by
<a href="http://www.corpokin.com/">CorpoKin </a>and Powered by <a href="http://v3datasolution.com/">V3 Data Solution</a>
</p>
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
	<script src="${pageContext.request.contextPath}/resources/js/jquery-2.1.4.min.js"></script>
	<!-- Dropdown Menu -->
	<script src="${pageContext.request.contextPath}/resources/js/hoverIntent.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/superfish.js"></script>
	<!-- Bootstrap -->
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<!-- Counters -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.countTo.js"></script>
	<!-- Stellar Parallax -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
	<!-- Owl Slider -->
	<!-- // <script src="js/owl.carousel.min.js"></script> -->
	<!-- Date Picker -->
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.min.js"></script>
	<!-- CS Select -->
	<script src="${pageContext.request.contextPath}/resources/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/selectFx.js"></script>
	<!-- Flexslider -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.flexslider-min.js"></script>
	<!-- Google Map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="${pageContext.request.contextPath}/resources/js/google_map.js"></script>

	<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

</body>
</html>