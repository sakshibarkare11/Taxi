<!doctype html>
<html lang="en">


<!-- Mirrored from pickme-html.pixelomatic.com/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Sep 2022 06:57:07 GMT -->
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" href="img/favicon.png">

<link rel="stylesheet" href="vendors/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="vendors/bootstrap-datepicker/jquery.mobile.datepicker.css">
<link rel="stylesheet"
	href="vendors/bootstrap-datepicker/jquery.mobile.datepicker.theme.css">
<link rel="stylesheet" href="vendors/elagent-icon/style.css">
<link rel="stylesheet" href="vendors/themfiy/themify-icons.css">
<link rel="stylesheet"
	href="vendors/simple-line-icon/simple-line-icons.css">
<link rel="stylesheet" href="vendors/flaticon/font/flaticon.css">
<link rel="stylesheet" href="vendors/slick/slick.css">
<link rel="stylesheet" href="vendors/slick/slick-theme.css">
<link rel="stylesheet" href="vendors/animation/animate.css">
<link rel="stylesheet" href="vendors/calender/dcalendar.picker.css">
<link rel="stylesheet" href="vendors/magnify-popup/magnific-popup.css">


<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/sp.css">
<link rel="stylesheet" href="css/sp2.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css">

<title>Smart Taxi</title>
<!--  Map
   <link href="Content/bootstrap.min.css" rel="stylesheet" />
     <link rel="preconnect" href="https://fonts.gstatic.com">
    <script src="https://kit.fontawesome.com/ab2155e76b.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet"> -->
<link href="css/App.css" rel="stylesheet" />
</head>
<h2 style="text-align: center;"><%@include
		file="MessageBox/message.jsp"%></h2>

<%-- <%
String s=(String)session.getAttribute("msg");
if(s!=null)
{
%>

<%} 
session.removeAttribute("msg");
%> --%>

<script>
document.addEventListener("DOMContentLoaded", function() {
	  const pickupInput = document.getElementById("from");
	  const destinationInput = document.getElementById("to");

	  pickupInput.addEventListener("change", calculateFare);
	  destinationInput.addEventListener("change", calculateFare);
	});
	
function calculateFare() {
	  const pickupValue = document.getElementById("from").value;
	  const destinationValue = document.getElementById("to").value;
	  let fare = 0;

	  // Add conditions to calculate the fare based on pickup and destination
	  if (pickupValue === "wagholi" && destinationValue=== "yerwada") {
	    fare = 100;
	  } else if (pickupValue=== "wagholi" && destinationValue=== "dhole patil college of engineering") {
	    fare = 66;
	  }
	  
	  else if (pickupValue=== "wagholi" && destinationValue=== "viman nagar") {
		    fare = 100;
		  }
	  else if (pickupValue=== "viman nagar" && destinationValue === "pune station") {
		    fare = 130;
		  }

	  else if (pickupValue=== "hadapsar" && destinationValue=== "hari ganga yerwada") {
		    fare = 211;
		  }
	  else if (pickupValue=== "pune station" && destinationValue=== "dhole patil college of engineering") {
		    fare = 163;
		  }



	  

	  // Update the fare input field with the calculated fare amount
	  document.getElementById("fare").value = fare;
	}
</script>
<body>
	<div id="google_element"></div>
	<script
		src="http://translate.google.com/translate_a/element.js?cb=loadGoogleTranslate"></script>
	<script>
    function loadGoogleTranslate(){
    	new google.translate.TranslateElement("google_element");
    }
    </script>
	<div class="sampleContainer">
		<div class="loading">
			<img src="img/loader_5.gif" alt="">
			<h2>
				Loading <span></span> <span></span> <span></span> <span></span> <span></span>
				<span></span> <span></span>
			</h2>
		</div>
	</div>

	<header class="header_area">


		<div class="container-fluid d-flex">
			<nav class="navbar navbar-expand-lg navbar-light">
				<a href="#" class="logo"><img src="img/logo_h.png" alt=""></a>
				<button class="navbar-toggler collapsed" type="button"
					data-toggle="collapse" data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="menu_toggle"> <span class="hamburger"> <span></span>
							<span></span> <span></span>
					</span> <span class="hamburger-cross"> <span></span> <span></span>
					</span>
					</span>
				</button>
				<div class="collapse navbar-collapse offset"
					id="navbarSupportedContent">
					<ul class="nav navbar-nav menu mr-auto">
						<li class="nav-item dropdown submenu active"><a
							class="nav-link dropdown-toggle" href="index.jsp" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Home </a> <!-- <ul class="dropdown-menu">
                                <li class="nav-item active"><a class="nav-link" href="index.html">Home V1</a></li>
                                <li class="nav-item"><a class="nav-link" href="index2.html">Home V2</a></li>
                            </ul> --></li>
						<li class="nav-item"><a class="nav-link" href="get-taxi.html">Get
								Taxi</a></li>
						<li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
						<!-- <li class="nav-item"><a class="nav-link" href="service.html">Service</a></li> -->
						<li class="nav-item"><a class="nav-link" href="team.html">Team</a></li>
						<!--   <li class="nav-item dropdown submenu">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            News
                            </a>
                            <ul class="dropdown-menu">
                                <li class="nav-item"><a class="nav-link" href="blog.html">News</a></li>
                                <li class="nav-item"><a class="nav-link" href="blog-details.html">Single News</a></li>
                            </ul> 
                        </li> -->
						<li class="nav-item"><a class="nav-link" href="contact.html">Contacts</a></li>
					</ul>
					<div class="phone_btn">
						<a href="#"><span>+91 964</span> 444 65 00</a>
					</div>
				</div>
			</nav>
			<div class="menu_btn">
				<div class="search_dropdown">
					<a href="#" class="search_btn"><i class="icon_search"></i></a>
					<div class="search">
						<form action="#" method="get" class="search-form">
							<div class="input-group">
								<input type="search" class="form-control"
									placeholder="Search for"> <span
									class="input-group-addon">
									<button type="submit">
										<i class="icon icon-Search"></i>
									</button>
								</span>
							</div>
						</form>
					</div>
				</div>
				<a href="get-taxi.html" class="book_btn">Book a Ride</a>
			</div>
		</div>
	</header>
	<section class="slider_area d-flex align-items-center">
		<div class="ovarlay"></div>
		<div class="background_slider slick">
			<div class="bg_img"
				style="background: url(img/slider/slider1.jpg) center center/cover no-repeat scroll;"></div>
			<div class="bg_img"
				style="background: url(img/slider/slider2.jpg) center center/cover no-repeat scroll;"></div>
			<div class="bg_img"
				style="background: url(img/slider/slider3.jpg) center center/cover no-repeat scroll;"></div>
		</div>
		<div class="container">
			<div class="slider_text text-center">
				<h1>
					Smart Taxi <br>Move Beyond Your Choice
				</h1>
				<p>Why I say old chap that is spiffing in my flat a blinding
					shot, Elizabeth blow off arse ummm I'm telling sloshed smashing
					what a plonker richard quaint brilliant tosser.!</p>
				<a href="#" class="btn slider_btn yellow_hover">Our main
					services</a>
			</div>
		</div>
	</section>
	<section class="booking_form_area bg_one">
		<div class="container">
			<div class="booking_slider slick">
				<div class="booking_form_info">
					<div class="tab_img">
						<div class="b_overlay_bg"></div>
						<img src="img/slider/booking_car.png" alt="">
					</div>
					<div class="boking_content">





						<h2>Booking Taxi Online</h2>
						<form action="BookCar" method="post" class="row booking_form"
							target="_blank">
							<div class="col-md-12">
								<div class="form-group choose_item">
									<label> <input type="radio" value="standard"
										name="radio-group"> <span>Standard</span>
									</label> <label> <input type="radio" value="economy"
										name="radio-group" checked> <span>ECONOMY</span>
									</label> <label> <input type="radio" value="business"
										name="radio-group"> <span>Business</span>
									</label> <label> <input type="radio" value="vip"
										name="radio-group"> <span>VIP</span>
									</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" name="name" class="form-control"
										placeholder="&#xe08a  Your Name"> <label
										class="border_line"></label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="number" name="phone" class="form-control"
										placeholder="&#xe090  Phone"> <label
										class="border_line"></label>
								</div>
							</div>



							<div class="col-md-6">
								<div class="form-group" id="search-form">
									<input placeholder="&#xe06b Start Destination"
										autocomplete="off" autofocus type="text" name="stades"
										id="from" class="form-control">
									<!-- <button  type="button"><i class="fas fa-microphone"></i></button> -->
									<label class="border_line"></label>
								</div>
							</div>
							<div class="col-md-6" id="search">
								<div class="form-group">
									<input type="text" name="enddes" id="to" class="form-control"
										placeholder="&#xe06b End Destination" autocomplete="off"
										autofocus>
									<!-- <button  type="button"><i class="fas fa-microphone"></i></button> -->
									<label class="border_line"></label>
								</div>
								<div id="result"></div>
							</div>




							<div class="col-md-6">
								<div class="form-group">
									<input type="text" name="timedate"
										class="form-control date-input-css"
										placeholder="&#xe06b  Time and Date"> <label
										class="border_line"></label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" name="cartype" class="form-control"
										id="fare" placeholder="&#xe0db;  Car Type"> <label
										class="border_line"></label>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="form-group">
									<button class="btn slider_btn dark_hover"
										onclick="razorpayPayment()">Book Now !</button>
									<!--  <a href="#" class="btn slider_btn dark_hover">Book Now !</a> -->
								</div>
							</div>
							<div class="container-fluid">
								<div id="googleMap"></div>
								<div id="output"></div>
							</div>
						</form>


					</div>
				</div>

			</div>
		</div>
	</section>

	<section class="featured_area bg_one">
		<div class="container">
			<div class="section_title text-center">
				<h5>What we Offer</h5>
				<h2>We’re a Company of Talented</h2>
			</div>
			<div class="row featured_info slick">
				<div class="col-lg-12">
					<div class="featured_item">
						<i class="flaticon-map icon"></i>
						<h3>Fast & Easy Transport</h3>
						<p>He nicked it spiffing good time lurgy william bonnet haggle
							crikey ruddy, bits and bobs charles brown bread bugger what.!</p>
						<a href="#" class="learn_btn">Learn More <i
							class="ti-arrow-right"></i></a>
					</div>
				</div>

			</div>
		</div>
	</section>


	<section class="advantage_area bg_one">
		<div class="container">
			<div class="section_title text-center">
				<h5>Main Features</h5>
				<h2>Our Advantages</h2>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="advantage_item">
						<i class="flaticon-gear"></i>
						<h3>100% Pleasure</h3>
						<p>Mush some dodgy chav sloshed bubble and squeak brolly owt
							to do with me bum.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="advantage_item">
						<i class="flaticon-travel"></i>
						<h3>Lots of locations</h3>
						<p>Mush some dodgy chav sloshed bubble and squeak brolly owt
							to do with me bum.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="advantage_item">
						<i class="flaticon-car"></i>
						<h3>Luxury Cars</h3>
						<p>Mush some dodgy chav sloshed bubble and squeak brolly owt
							to do with me bum.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="advantage_item">
						<i class="flaticon-bag"></i>
						<h3>Additional Services</h3>
						<p>Mush some dodgy chav sloshed bubble and squeak brolly owt
							to do with me bum.</p>
					</div>
				</div>
			</div>
			<div class="car_img">
				<img class="car_one wow caranimationTwo" data-wow-delay="0.3s"
					src="img/car/car_01.png" alt=""> <img
					class="car_two wow caranimationOne" data-wow-delay="1s"
					src="img/car/car_02.png" alt="">
			</div>
		</div>
	</section>


	<section class="contact_area">
		<div class="container-fluid">
			<div class="row">
				<!-- <div class="col-lg-6 map_area">
                    <iframe class="actAsDiv" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d198725.17847734212!2d-77.15465264882869!3d38.899264957793875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7c6de5af6e45b%3A0xc2524522d4885d2a!2sWashington%2C+DC%2C+USA!5e0!3m2!1sen!2sbd!4v1480701250770"></iframe>
                    <div class="app_contact_info">
                        <span class="triangle"></span>
                        <div class="info_item">
                            <i class="ti-location-pin"></i>
                            <h6>Address:</h6>
                            <p>424 Mill Pond. Arlington<br> MA 02474, New York</p>
                        </div>
                        <div class="info_item">
                            <i class="ti-mobile"></i>
                            <h6>Phone:</h6>
                            <p><a href="tel:948256347968">+948 256 347 968</a></p>
                        </div>
                        <div class="info_item">
                            <i class="ti-email"></i>
                            <h6>Email:</h6>
                            <p><a href="mailto:picme@gmail.com">pickme@gmail.com</a></p>
                        </div>
                    </div> -->
			</div>
			<div class="col-lg-6 p0">
				<div class="contact_info">
					<div class="section_title">
						<h5>HOW CAN WE HELP YOU?</h5>
						<h2>Have a Questions?</h2>
					</div>
					<form action="Contact" method="post" id="contactForm"
						novalidate="novalidate" class="contact_form">
						<div class="form-group">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="Your Name"> <label class="border_line"></label>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="email" name="email"
								placeholder="Your Email"> <label class="border_line"></label>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="subject"
								name="subject" placeholder="Subject"> <label
								class="border_line"></label>
						</div>
						<div class="form-group">
							<textarea id="message" name="message" cols="30" rows="10"
								class="form-control" placeholder="Your Message"></textarea>
							<label class="border_line"></label>
						</div>
						<div class="form-group">
							<button type="submit" value="submit"
								class="slider_btn yellow_hover">Send Message</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		</div>
	</section>
	<footer class="footer_area sec_pad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="f_widget about_widget">
						<a href="index.html" class="f_logo"><img src="img/logo.png"
							alt=""></a>
						<div class="f_social_icon">
							<a href="#" class="ti-facebook"></a> <a href="#"
								class="ti-twitter-alt"></a> <a href="#" class="ti-vimeo-alt"></a>
							<a href="#" class="ti-pinterest"></a>
						</div>
						<!-- <p>Copyright © 2018 Develop by <a href="https://codecanyon.net/user/pixelsigns/portfolio">PixelSigns</a></p> -->
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="f_widget link_widget">
						<h2 class="f_title">Explore</h2>
						<ul class="list-unstyled f_list">
							<li><a href="#">Company</a></li>
							<li><a href="#">Android App</a></li>
							<li><a href="#">Smart Taxi</a></li>
							<li><a href="#">Our News</a></li>
							<li><a href="#">Get Taxi</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="f_widget link_widget">
						<h2 class="f_title">Useful links</h2>
						<ul class="list-unstyled f_list">
							<li><a href="#">About Us</a></li>
							<li><a href="#">Reviews</a></li>
							<li><a href="#">Service</a></li>
							<li><a href="#">Taxi hire in your city</a></li>
							<li><a href="#">Contacts</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="f_widget link_widget">
						<h2 class="f_title">Help?</h2>
						<ul class="list-unstyled f_list">
							<li><a href="#">FAQ</a></li>
							<li><a href="#">Privacy</a></li>
							<li><a href="#">Term & conditions</a></li>
							<li><a href="#">Feedback</a></li>
							<li><a href="#">Reporting</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!--================Contact Success and Error message Area =================-->
	<div id="success" class="modal modal-message fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<span class="close" data-dismiss="modal" aria-label="Close"><span
						aria-hidden="true">&times;</span></span>
					<h2 class="modal-title">Thank you</h2>
					<p class="modal-subtitle">Your message is successfully sent...</p>
				</div>
			</div>
		</div>
	</div>

	<!-- Modals error -->

	<div id="error" class="modal modal-message fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<span class="close" data-dismiss="modal" aria-label="Close"><span
						aria-hidden="true">&times;</span></span>
					<h2 class="modal-title">Sorry</h2>
					<p class="modal-subtitle">Something went wrong</p>
				</div>
			</div>
		</div>
	</div>
	<!--================End Contact Success and Error message Area =================-->
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="js/sp.js" defer></script>
	<!-- <script src="js/sp2.js"></script> -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="vendors/bootstrap/js/popper.min.js"></script>
	<script src="vendors/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendors/slick/slick.min.js"></script>
	<script src="vendors/calender/dcalendar.picker.js"></script>
	<script src="vendors/bootstrap-datepicker/datepicker.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="vendors/magnify-popup/jquery.magnific-popup.min.js"></script>
	<script src="js/smoothscroll.js"></script>
	<!-- contact js -->
	<script src="js/jquery.form.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/contact.js"></script>
	<script src="js/custom.js"></script>
	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
	<script src="js/payment.js"></script>



	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAt58fxdDyELWtKIqWSoqKh-UWLCCtQFDU&libraries=places"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="Scripts/jquery-3.1.1.min.js"></script>
	<script src="js/Main.js"></script>
</body>


<!-- Mirrored from pickme-html.pixelomatic.com/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Sep 2022 07:00:56 GMT -->
</html>