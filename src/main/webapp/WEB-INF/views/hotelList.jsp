<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<link rel="shortcut icon" href="favicon.ico">
<!-- <link href='https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700italic,900,700,900italic' rel='stylesheet' type='text/css'> -->






<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/superfish.css">
<!-- Owl Slider -->
<!-- <link rel="stylesheet" href="css/owl.carousel.css"> -->
<!-- <link rel="stylesheet" href="css/owl.theme.default.min.css"> -->
<!-- Date Picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.min.css">
<!-- CS Select -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/cs-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/cs-skin-border.css">

<!-- Themify Icons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
<!-- Flat Icon -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<!-- Icomoon -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/icomoon.css">
<!-- Flexslider  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flexslider.css">

<!-- Style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<!-- Modernizr JS -->
<script
	src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/cardview.css">



</head>


<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<div id="fh5co-header">
				<header id="fh5co-header-section" style="background-color:gray;">
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo">
							<a href="index.html">Omiya</a>
						</h1>
						<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li><a class="active" href="index.html">Home</a></li>


							<li><a href="services.html">Hotels</a></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
						</nav>
					</div>
				</div>
				</header>

			</div>
			<!-- end:fh5co-header -->




			<div id="featured-hotel" class="fh5co-bg-color">
				<div class="container">

					<div class="row">
						<div class="col-md-12">
							<div class="section-title text-center">
								<h2>Hotels List</h2>
							</div>
						</div>
					</div>



					<c:forEach var="i" begin="1" end="5">
 
						<div class="row" align="center">
							<div class="col-md-12" align="center">
								<div class='tile' align="center">
									<img class='tile-img'
										style="width: 50%; background-image: url(https://static.pexels.com/photos/9050/pexels-photo.jpg);" />

									<div class='tile-info'">
										<h1>Hotel Name sfsdf</h1>
										<p style="margin-bottom: 0px;">City</p>

										<p style="margin-bottom: 0px">AC Room - &#x20B9;</p>
										<p style="margin-bottom: 0px">Non AC Room - &#x20B9;</p>

										<a class="btn btn-primary btn-luxe-primary">Book Now</a>

									</div>
								</div>
							</div>
						</div>


					</c:forEach>

					<div class="row">
						<div class="feature-full-1col">
							<div class="image"
								style="background-image: url(images/hotel_feture_1.jpg);">
								<!-- <div class="descrip text-center">
							<p><small>For as low as</small><span>$100/night</span></p>
						</div> -->
							</div>
							<div class=" ">
								<h5>
									Deluxe Hotel
									</h3>
									<p>Canada corner Kabir estate Nashik -422002</p>
									<p>+91-9976543213</p>
									<p>Abc@gmail,con</p>
									<p>
										<a href="#" class="btn btn-primary btn-luxe-primary">Book
											Now <i class="ti-angle-right"></i>
										</a>
									</p>
							</div>
						</div>


					</div>

				</div>
			</div>





			<div id="fh5co-blog-section">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="section-title text-center">
								<h2>Our Blog</h2>
							</div>
						</div>
					</div>

				</div>
			</div>

			<footer id="footer" class="fh5co-bg-color">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="copyright">
							<p>
								<small>&copy; 2016 Free HTML5 Template. <br> All
									Rights Reserved. <br> Designed by <a
									href="http://freehtml5.co" target="_blank">FreeHTML5.co</a> <br>
									Demo Images: <a href="http://unsplash.com/" target="_blank">Unsplash</a></small>
							</p>
						</div>
					</div>
					<div class="col-md-6">
						<div class="row">
							<div class="col-md-3">
								<h3>Company</h3>
								<ul class="link">
									<li><a href="#">About Us</a></li>
									<li><a href="#">Hotels</a></li>
									<li><a href="#">Customer Care</a></li>
									<li><a href="#">Contact Us</a></li>
								</ul>
							</div>
							<div class="col-md-3">
								<h3>Our Facilities</h3>
								<ul class="link">
									<li><a href="#">Resturant</a></li>
									<li><a href="#">Bars</a></li>
									<li><a href="#">Pick-up</a></li>
									<li><a href="#">Swimming Pool</a></li>
									<li><a href="#">Spa</a></li>
									<li><a href="#">Gym</a></li>
								</ul>
							</div>
							<div class="col-md-6">
								<h3>Subscribe</h3>
								<p>Sed cursus ut nibh in semper. Mauris varius et magna in
									fermentum.</p>
								<form action="#" id="form-subscribe">
									<div class="form-field">
										<input type="email" placeholder="Email Address" id="email">
										<input type="submit" id="submit" value="Send">
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<ul class="social-icons">
							<li><a href="#"><i class="icon-twitter-with-circle"></i></a>
								<a href="#"><i class="icon-facebook-with-circle"></i></a> <a
								href="#"><i class="icon-instagram-with-circle"></i></a> <a
								href="#"><i class="icon-linkedin-with-circle"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			</footer>

		</div>
		<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- Javascripts -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-2.1.4.min.js"></script>
	<!-- Dropdown Menu -->
	<script
		src="${pageContext.request.contextPath}/resources/js/hoverIntent.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/superfish.js"></script>
	<!-- Bootstrap -->
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<!-- Counters -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.countTo.js"></script>
	<!-- Stellar Parallax -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
	<!-- Owl Slider -->
	<!-- // <script src="js/owl.carousel.min.js"></script> -->
	<!-- Date Picker -->
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.min.js"></script>
	<!-- CS Select -->
	<script
		src="${pageContext.request.contextPath}/resources/js/classie.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/selectFx.js"></script>
	<!-- Flexslider -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.flexslider-min.js"></script>

	<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

</body>


</html>