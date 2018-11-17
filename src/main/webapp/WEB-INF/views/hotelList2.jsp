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


								<li><a href="${pageContext.request.contextPath}/">Hotels</a></li>
							<li><a href="${pageContext.request.contextPath}/showContact">Contact</a></li>
						</ul>
						</nav>
					</div>
				</div>
				</header>

			</div>
			<!-- end:fh5co-header -->




			<div id="fh5co-hotel-section">
		<div class="container">
			<div class="row">
				 
				
				<c:forEach var="getHotelsAndBsyRoomList" items="${getHotelsAndBsyRoomList}" varStatus="count">
 					<c:choose>
 						<c:when test="${(getHotelsAndBsyRoomList.acRoomCount-getHotelsAndBsyRoomList.acBsyRoom)!=0 or (getHotelsAndBsyRoomList.nonacRoomCount-getHotelsAndBsyRoomList.nonacBsyRoom)!=0}">
 						
				<div class="col-md-4">
					<div class="hotel-content">
						<div class="hotel-grid" style="background-image: url(${pageContext.request.contextPath}/resources/images/hotel/${getHotelsAndBsyRoomList.hotelPic});">
							<!-- <div class="price"><small>For as low as</small><h5>Rs 100/day</h5></div> -->
							<a class="book-now text-center" href="#" data-toggle="modal" data-target="#myModal${getHotelsAndBsyRoomList.hotelId }"><i class="ti-calendar"></i> Book Now</a>
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
							 
							 <%-- <div class="row">
							<div class="col-md-6">
							<h5><strong style="color: red;">AC Room Cost :</strong> &#x20B9; ${getHotelsAndBsyRoomList.acRoomCost}/day</h5>
							</div>
					 <div class="col-md-6">
							<h5><strong style="color: red;">Non AC Room Cost :</strong> &#x20B9; ${getHotelsAndBsyRoomList.nonacRoomCost}/day</h5>
							</div>
							</div> --%>
							 
							</div> 
							<p><a class="btn btn-primary btn-luxe-primary" data-toggle="modal" data-target="#myModal${getHotelsAndBsyRoomList.hotelId }"> Book Now</a></p>
						</div>
					</div>
					
<!-- Modal -->
  <div class="modal fade" id="myModal${getHotelsAndBsyRoomList.hotelId}" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Customer Details</h4>
        </div>
       <!--  <div class="modal-body"> -->
        <form action="">
        
    <div class="col-md-5"><strong> From Date :</strong><span>${startDate }</span></div><div class="col-md-4"><strong>To Date :</strong><span>${endDate }</span></div><div class="col-md-3"><strong>Days :</strong> ${diffDays}</div>
      <input type="hidden" id="days" name="days" value="${diffDays}">
       <input type="hidden" id="nonAc" name="nonAc" value="${getHotelsAndBsyRoomList.nonacRoomCount-getHotelsAndBsyRoomList.nonacBsyRoom}">
        <input type="hidden" id="ac" name="ac" value="${getHotelsAndBsyRoomList.acRoomCount-getHotelsAndBsyRoomList.acBsyRoom}">
       <hr>
        <div class="col-md-12">
					<div class="row">
					<div class="col-md-6">
							<div class="form-group">
							<select class="form-control" id="roomType${getHotelsAndBsyRoomList.hotelId}" name="roomType${getHotelsAndBsyRoomList.hotelId}" required>
							<option value="" selected disabled>Select Room Type</option>
							<c:choose>
 						<c:when test="${(getHotelsAndBsyRoomList.acRoomCount-getHotelsAndBsyRoomList.acBsyRoom)!=0 && (getHotelsAndBsyRoomList.nonacRoomCount-getHotelsAndBsyRoomList.nonacBsyRoom)!=0}">
 							
 							<option value="0">Non-AC Room</option>
							<option value="1">AC Room</option>
							
							</c:when>
							
							<c:when test="${(getHotelsAndBsyRoomList.acRoomCount-getHotelsAndBsyRoomList.acBsyRoom)==0 && (getHotelsAndBsyRoomList.nonacRoomCount-getHotelsAndBsyRoomList.nonacBsyRoom)!=0}">
 							<option value="0">Non-AC Room</option>
							<option value="1" disabled>AC Room</option>
							
							</c:when>
							
							<c:when test="${(getHotelsAndBsyRoomList.acRoomCount-getHotelsAndBsyRoomList.acBsyRoom)!=0 && (getHotelsAndBsyRoomList.nonacRoomCount-getHotelsAndBsyRoomList.nonacBsyRoom)==0}">
 							<option value="0" disabled>Non-AC Room</option>
							<option value="1" >AC Room</option>
							
							</c:when>
 						 
							</c:choose>
							</select>
								 
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control" id="noOfRooms${getHotelsAndBsyRoomList.hotelId}" name="noOfRooms${getHotelsAndBsyRoomList.hotelId}" onkeyup="getTotalBill(); return checkNum(event,this);"   onkeypress="return IsNumeric(event,this);" placeholder="No of Rooms" required>
							</div>
						</div>
						
							<div class="col-md-6">
							<div class="form-group">
							<select class="form-control" id="noOfAdult${getHotelsAndBsyRoomList.hotelId}" name="noOfAdult${getHotelsAndBsyRoomList.hotelId}" required>
							<option value="" selected disabled>Select No of Adult</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							</select>
								 
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
							<select class="form-control" id="noOfChild${getHotelsAndBsyRoomList.hotelId}" name="noOfChild${getHotelsAndBsyRoomList.hotelId}" required>
							<option value="0" selected disabled>0 Child</option>
							 
							<option value="1">1 Child</option>
							<option value="2">2 Child</option>
							<option value="3">3 Child</option>
							<option value="4">4 Child</option>
							<option value="5">5 Child</option>
							<option value="6">6 Child</option>
							<option value="7">7 Child</option>
							<option value="8">8 Child</option>
							<option value="9">9 Child</option>
							<option value="10">10 Child</option>
							</select>
								 
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control" id="custName${getHotelsAndBsyRoomList.hotelId}" name="custName${getHotelsAndBsyRoomList.hotelId}" placeholder="Custmore Name"required>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control" id="custContact${getHotelsAndBsyRoomList.hotelId}" name="custContact${getHotelsAndBsyRoomList.hotelId}" placeholder="Customer Contact"required>
							</div>
						</div>
						 <div class="col-md-6">
							<div class="form-group">
							<!-- 	<input type="text" class="form-control" placeholder="Customer Address"required> -->
								<textarea id="custAdd${getHotelsAndBsyRoomList.hotelId}" name="custAdd${getHotelsAndBsyRoomList.hotelId}" class="form-control" id="" cols="30" rows="3" placeholder="Address" ></textarea>
							</div>
						</div>
						 <div class="col-md-6">
							<div class="form-group">
								<input type="email" id="custMail${getHotelsAndBsyRoomList.hotelId}" name="custAdd${getHotelsAndBsyRoomList.hotelId}" class="form-control" placeholder="Customer Email"required>
							</div>
						</div>
						 
						 
						 
						
						<!--  <div class="col-md-6">
							<div class="form-group">
								<span>Payable Amount &#x20B9; </span><span id="payableAmt"><strong>2000</strong></span>
							</div>
						</div> -->
						 
						 
						<div class="col-md-5">
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<input type="submit" value="Proceed" class="btn btn-primary">
							</div>
						</div>
					</div>
				</div>
        </form>
        
         <!--  <p>Some text in the modal.</p> -->
       <!--  </div> -->
         <div class="modal-footer">
          <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
        </div>  
      </div>
      
    </div>
  </div>
					
				</div>
				
				</c:when>
				</c:choose>
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
						<p style="color:white;">Web Design &amp; Development by
<a href="http://www.corpokin.com/">CorpoKin </a>and Powered by <a href="http://v3datasolution.com/">V3 Data Solution</a>
</p>
						<!-- <p style="color:white;">
						Powered by <a href="http://v3datasolution.com" target="_blank">V3 Data Solutions</a> </p> -->
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