<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
	
<title>Omiya</title>


<link rel="shortcut icon" href="favicon.ico">
	

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/superfish.css">
	

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.min.css">
	

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cs-select.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cs-skin-border.css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flexslider.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

	<script src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
	
	
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
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo">
							<a href="${pageContext.request.contextPath}/">Omiya</a>
						</h1>
						<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li><a class="active" href="${pageContext.request.contextPath}/">Home</a></li>


							<li><a href="#fh5co-hotel-section">Hotels</a></li>
							<li><a href="${pageContext.request.contextPath}/showContact">Contact</a></li>
						</ul>
						</nav>
					</div>
				</div>
				</header>
		</header>
		
	</div>
	<!-- end:fh5co-header -->
	<aside id="fh5co-hero" class="js-fullheight" style="height: 300px;">
		<div class="flexslider js-fullheight">
			<ul class="slides">
		   	<li style="background-image: url(${pageContext.request.contextPath}/resources/images/img14.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="col-md-12 col-md-offset-0 text-center slider-text">
		   				<div class="slider-text-inner js-fullheight">
		   					<div class="desc">
		   						<p><span>OMIYA</span></p>
		   						<h2>Reserve Room for Family Vacation</h2>
			   					<!-- <p>
			   						<a href="#hotels" class="btn btn-primary btn-lg">Book Now</a>
			   					</p> -->
		   					</div>
		   				</div>
		   			</div>
		   		</div>
		   	</li>
		   	<li style="background-image: url(${pageContext.request.contextPath}/resources/images/banner.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="col-md-12 col-md-offset-0 text-center slider-text">
		   				<div class="slider-text-inner js-fullheight">
		   					<div class="desc">
		   						<p><span>OMIYA</span></p>
		   						<h2>Make Your Vacation Comfortable</h2>
			   					<!-- <p>
			   						<a href="#" class="btn btn-primary btn-lg">Book Now</a>
			   					</p> -->
		   					</div>
		   				</div>
		   			</div>
		   		</div>
		   	</li>
		   
		   	
		  	</ul>
	  	</div>
	</aside>
	<div class="wrap">
		<div class="container">
			<div class="row">
				<div id="availability"  style="background: #2887C8;">
					<form action="${pageContext.request.contextPath}/showHotelList" method="post">

						<div class="a-col">
							<section>
								<select class="cs-select cs-skin-border" style="border-color: #d8e838;" name="cityid">
									<option value="" disabled selected>Select City</option>
									
									<c:forEach var="cityList" items="${cityList}" varStatus="count"> 
									<option value="${cityList.cityId}">${cityList.cityName }</option>
									</c:forEach>
									<!-- <option value="twitter">Deluxe Hotel</option>
									<option value="linkedin">Five Star Hotel</option> -->
								</select>
							</section>
						</div>
						<div class="a-col alternate">
							<div class="input-field">
								<label for="date-start">Check In</label>
								<input type="text"style="border-color: #d8e838;" class="form-control" id="date-start" name="date_start" />
							</div>
						</div>
						<div class="a-col alternate">
							<div class="input-field">
								<label for="date-end">Check Out</label>
								<input type="text" style="border-color: #d8e838" class="form-control" id="date-end" name="date_end" />
							</div>
						</div>
						<!-- <div class="a-col action"> -->
							 <button type="submit" class="btn-primary" style="background: #2887C8; border: 2px solid #2887C8; margin-right: 0px;padding-right: 0px; ">
								<span>Check</span>
								Availability
								</button>
							 
						<!-- </div> -->
					</form>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	<div id="fh5co-hotel-section" style="margin-bottom: 0px; padding-bottom: 0px;">
		<div class="container">
			<div class="row">
				 
				
				<c:forEach var="getHotelsAndBsyRoomList" items="${getHotelsAndBsyRoomList}" varStatus="count">
 					 	
				<div class="col-md-4">
					<div class="hotel-content">
						<div class="hotel-grid" style="background-image: url(${pageContext.request.contextPath}/resources/images/hotel/${getHotelsAndBsyRoomList.hotelPic});">
							<!-- <div class="price"><small>For as low as</small><h5>Rs 100/day</h5></div> -->
							<%-- <a class="book-now text-center" href="#" data-toggle="modal" data-target="#myModal${getHotelsAndBsyRoomList.hotelId }"><i class="ti-calendar"></i> Book Now</a> --%>
						</div>
						<div class="desc">
						<div class="col-md-12">
					<div class="row">
					<div class="col-md-10">
							<h4><a href="${pageContext.request.contextPath}/showHotelsImages/?hotelId=${getHotelsAndBsyRoomList.hotelId}&hotelName=${getHotelsAndBsyRoomList.hotelName}"><strong style="color: green;">${getHotelsAndBsyRoomList.hotelName}</strong></a></h4>
							</div>
							<div class="col-md-2">
							<h5><strong style="color: red;float: right">${getHotelsAndBsyRoomList.cityName}</strong></h5>
							</div>
							</div>
							<div class="row">
							<div class="col-md-12">
							<h6>${getHotelsAndBsyRoomList.address} ${getHotelsAndBsyRoomList.pincode}</h6>
							  </div>
					 
							</div>
							 
							 <div class="row">
							<div class="col-md-6">
							<h5><strong style="color: red;">AC Room Cost :</strong> &#x20B9; ${getHotelsAndBsyRoomList.acRoomCost}/day</h5>
							</div>
					 <div class="col-md-6">
							<h5><strong style="color: red;">Non AC Room Cost :</strong> &#x20B9; ${getHotelsAndBsyRoomList.nonacRoomCost}/day</h5>
							</div>
							</div>
							 
							</div> 
							<p><a class="btn btn-primary btn-luxe-primary" href="${pageContext.request.contextPath}/showHotelsImages/?hotelId=${getHotelsAndBsyRoomList.hotelId}&hotelName=${getHotelsAndBsyRoomList.hotelName}"> More Images</a></p>
						</div>
					</div>
			 		
				</div>
				
			 
				</c:forEach>
</div>
			</div>
		</div>
		
		
		
		
		

	<%-- <div id="featured-hotel" class="fh5co-bg-color">
		<div class="container">
			
			<div class="row" id="hotels">
				<div class="col-md-12">
					<div class="section-title text-center">
						<h2>Featured Hotels</h2>
					</div>
				</div>
			</div>

			<div class="row">
				 

				<div class="feature-full-2col">
				 
					<div class="f-hotel">
						<div class="image" style="background-image: url(${pageContext.request.contextPath}/resources/images/hotel/${hotelImagesList[0].imageName});">
							<!-- <div class="descrip text-center">
								<p><small>For as low as</small><span>$99/night</span></p>
							</div> -->
						</div>
						<div class="desc">
							<h3>${hotelImagesList[0].hotelName}</h3>
							<p>Pellentesque habitant morbi tristique senectus et netus ett mauada fames ac turpis egestas. Etiam euismod tempor leo, 
							in suscipit urna condimentum sed. </p>
<!-- 							<p><a href="#" class="btn btn-primary btn-luxe-primary">Book Now <i class="ti-angle-right"></i></a></p>
 -->						</div>
					</div>
					
					
					<div class="f-hotel">
						<div class="image" style="background-image: url(${pageContext.request.contextPath}/resources/images/hotel/${hotelImagesList[1].imageName});">
							<!-- <div class="descrip text-center">
								<p><small>For as low as</small><span>$99/night</span></p>
							</div> -->
						</div>
						<div class="desc">
							<h3>${hotelImagesList[1].hotelName}</h3>
							<p>Pellentesque habitant morbi tristique senectus et netus ett mauada fames ac turpis egestas. Etiam euismod tempor leo, in suscipit urna condimentum sed. </p>
<!-- 							<p><a href="#" class="btn btn-primary btn-luxe-primary">Book Now <i class="ti-angle-right"></i></a></p>
 -->						</div>
					</div>
					 
				</div>
			</div>

		</div>
	</div>

	 --%>
	 


	<div id="fh5co-blog-section" style="margin-top: 0px; padding-top: 0px;	">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-title text-center">
						<h2>Explore Our Hotels</h2>
					</div>
				</div>
			</div>
			<div class="row">
			<c:forEach var="hotelImages" items="${hotelImagesList}" varStatus="count"> 
			<c:if test="${count.index<3}">
				<div class="col-md-4">
					<div class="blog-grid" style="background-image: url(${pageContext.request.contextPath}/resources/images/hotel/${hotelImagesList[count.index+1].imageName});">
						<!-- <div class="date text-center">
							<span>09</span>
							<small>Aug</small>
						</div> -->
					</div>
					<div class="desc">
						<h3><a href="#">${hotelImagesList[count.index+1].hotelName}</a></h3>
					</div>
				</div>
				</c:if>
				</c:forEach>
				<%-- <div class="col-md-4">
					<div class="blog-grid" style="background-image: url(${pageContext.request.contextPath}/resources/images/image-2.jpg);">
						<!-- <div class="date text-center">
							<span>09</span>
							<small>Aug</small>
						</div> -->
					</div>
					<div class="desc">
						<h3><a href="#">1st Anniversary of Luxe Hotel</a></h3>
					</div>
				</div>
				<div class="col-md-4">
					<div class="blog-grid" style="background-image: url(${pageContext.request.contextPath}/resources/images/image-3.jpg);">
						<!-- <div class="date text-center">
							<span>09</span>
							<small>Aug</small>
						</div> -->
					</div>
					<div class="desc">
						<h3><a href="#">Discover New Adventure</a></h3>
					</div>
				</div> --%>
			</div>
		</div>
	</div>

	<div>	 <footer id="footer" class="fh5co-bg-color-dark"style="background-color: #2887C8;height:15px;">  
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

	<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

</body>


</html>