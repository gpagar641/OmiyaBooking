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


							<li><a class="active" href="#">Hotels</a></li>
							<li><a href="#">Contact</a></li>
						</ul>
						</nav>
					</div>
				</div>
				</header>

			</div>
			<!-- end:fh5co-header -->




			<div id="fh5co-hotel-section">
			<div class="col-md-6">
			</div>
			<div class="col-md-4">
			<span style="color: black"><strong>${hotelName}</strong></span>
			</div>
		<div class="container">
			<div class="row">
				 
				 
				<c:forEach var="hotelImagesLis" items="${hotelImagesLis}" varStatus="count">
 					 
				<div class="col-md-4">
					<div class="hotel-content">
						<div class="hotel-grid" style="background-image: url(${pageContext.request.contextPath}/resources/images/hotel/${hotelImagesLis.imageName});">
							<!-- <div class="price"><small>For as low as</small><h5>Rs 100/day</h5></div> -->
							<!-- <a class="book-now text-center" href="#"><i class="ti-calendar"></i> Book Now</a> -->
						</div>
						 
					</div>
		 
					
				</div>
 
				</c:forEach>
</div>
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



<script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        function IsNumeric(evt, element) {
        	 var charCode = (evt.which) ? evt.which : event.keyCode

        		        if (
        		            (charCode != 45 || $(element).val().indexOf('-') != -1) &&   
        		            (charCode != 46 || $(element).val().indexOf('.') != -1) &&      
        		            (charCode < 48 || charCode > 57))
        		            return false;

        		        return true;
        }
       
        
        function checkNum(eve, element) {
        	if($(element).val().indexOf('.') == 0) {    $(element).val($(element).val().substring(1));
        }
        
        }
        
        function getTotalBill() {
			
        	
        	
		}
        </script>
        
</body>


</html>