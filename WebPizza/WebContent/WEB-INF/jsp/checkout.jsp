<!DOCTYPE html>
<html>
<head>
<!-- Title here -->
<title>Checkout - Olson Kart</title>
<!-- Description, Keywords and Author -->
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,600italic,600'
	rel='stylesheet' type='text/css'>

<!-- Styles -->
<!-- Bootstrap CSS -->
<link href="resource/css/bootstrap.min.css" rel="stylesheet">
<!-- Animate css -->
<link href="resource/css/animate.min.css" rel="stylesheet">
<!-- Dropdown menu -->
<link href="resource/css/ddlevelsmenu-base.css" rel="stylesheet">
<link href="resource/css/ddlevelsmenu-topbar.css" rel="stylesheet">
<!-- Countdown -->
<link href="resource/css/jquery.countdown.css" rel="stylesheet">
<!-- Font awesome CSS -->
<link href="resource/css/font-awesome.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="resource/css/style.css" rel="stylesheet">

<!-- Favicon -->
<link rel="shortcut icon" href="#">
</head>

<body>

<!-- Shopping cart Modal -->
 		<jsp:include page="include/shoppingCart.jsp" />
 	  <!-- Shopping cart Modal -->	
           
      <!-- Logo & Navigation starts -->            
 		<jsp:include page="include/header.jsp" />
 	  <!-- Logo & Navigation end -->
 		

	<!-- Page content -->

	<div class="checkout">
		<div class="container">
			<h4>Shipping & Billing Details</h4>
			<br />
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label for="inputName" class="col-md-5">Is
						your order for delivery or carryout?</label>
				</div>
				<div class="form-group">
					<div id="delivery" class="col-md-4 deliveryActive control-label">
					</div>
					<div id="carryout" class="col-md-4 carryout control-label"></div>

				</div>
				
				<div class="form-group">
					<label for="inputName" class="col-md-5 ">We just need to know where you are so we can deliver to you.</label>

				</div>
				
				<div class="form-group">
					<div id="house" class="col-md-4 houseActive background control-label">
					</div>
	 				<div id="apartment" class="col-md-4 apartment background control-label"></div>
<!-- 					<div id="business" class="col-md-4 business background control-label"></div>
					<div id="campus-base" class="col-md-4 campus-base background  control-label"></div>
					<div id="hotel" class="col-md-4 hotel background control-label"></div>
					<div id="dormitory" class="col-md-4 dormitory background control-label"></div>
 -->					<div id="other" class="col-md-4 other background control-label"></div>

				</div>
				
				
				<div class="form-group">
					<label for="inputName" class="col-md-2 control-label">Name</label>
					<div class="col-md-4">
						<input type="text" class="form-control" id="inputName"
							placeholder="Name">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail1" class="col-md-2 control-label">Email</label>
					<div class="col-md-4">
						<input type="email" class="form-control" id="inputEmail1"
							placeholder="Email">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPhone" class="col-md-2 control-label">Phone
						Number</label>
					<div class="col-md-4">
						<input type="text" class="form-control" id="inputPhone"
							placeholder="Phone">
					</div>
				</div>
				<div class="form-group">
					<label for="inputCountry" class="col-md-2 control-label">Country</label>
					<div class="col-md-4">
						<select class="form-control">
							<option>Select Country</option>
							<option>USA</option>
							<option>India</option>
							<option>Canada</option>
							<option>UK</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputAddress" class="col-md-2 control-label">Address</label>
					<div class="col-md-4">
						<textarea class="form-control" rows="3" placeholder="Address"></textarea>
					</div> 
				</div>
				<div id="inputLevel" class="form-group">
					
				</div>
				<div class="form-group">
					<label for="inputZip" class="col-md-2 control-label">Zip
						Code</label>
					<div class="col-md-4">
						<input type="text" class="form-control" id="inputZip"
							placeholder="Zip Code">
					</div>
				</div>

				<hr />
				<h4>Payment Details</h4>

				<div class="form-group">
					<label for="inputPayment" class="col-md-2 control-label">Payment
						Method</label>
					<div class="col-md-4">
						<select class="form-control">
							<option>Payment Method</option>
							<option>Credit Card</option>
							<option>Debit Card</option>
							<option>Internet Banking</option>
							<option>Check</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<div class="col-md-offset-2 col-md-4">
						<div class="checkbox">
							<label> <input type="checkbox"> Accept Terms &
								Conditions
							</label>
						</div>
					</div>
				</div>
				<hr />
				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
						<button type="submit" class="btn btn-danger">Confirm
							Order</button>
						<button type="reset" class="btn btn-default">Reset</button>
					</div>
				</div>
			</form>

		</div>
	</div>


	<!-- Recent posts CarouFredSel Starts -->

	<div class="recent-posts blocky">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!-- Section title -->
					<div class="section-title">
						<h4>
							<i class="icon-desktop color"></i> &nbsp;Whats New in Our Company
						</h4>
					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="my_carousel">

								<div class="carousel_nav pull-right">
									<!-- Carousel navigation -->
									<a class="prev" id="car_prev" href="#"><i
										class="icon-chevron-left"></i></a> <a class="next" id="car_next"
										href="#"><i class="icon-chevron-right"></i></a>
								</div>

								<ul id="carousel_container">
									<!-- Carousel item -->
									<li><a href="#"><img src="img/items/2.png" alt=""
											class="img-responsive" /></a>
										<div class="carousel_caption">
											<h5>
												<a href="#">Duis estsum placerat</a>
											</h5>
											<p>Something about the product goes here. Not More than 2
												lines.</p>
											<a href="#" class="btn btn-info btn-sm"><i
												class="icon-shopping-cart"></i> Buy for $199</a>
										</div></li>
									<li><a href="#"><img src="img/items/3.png" alt=""
											class="img-responsive" /></a>
										<div class="carousel_caption">
											<h5>
												<a href="#">Maecenas estsum odio</a>
											</h5>
											<p>Something about the product goes here. Not More than 2
												lines.</p>
											<a href="#" class="btn btn-info btn-sm"><i
												class="icon-shopping-cart"></i> Buy for $199</a>
										</div></li>
									<li><a href="#"><img src="img/items/4.png" alt=""
											class="img-responsive" /></a>
										<div class="carousel_caption">
											<h5>
												<a href="#">Proin estsum accumsan</a>
											</h5>
											<p>Something about the product goes here. Not More than 2
												lines.</p>
											<a href="#" class="btn btn-info btn-sm"><i
												class="icon-shopping-cart"></i> Buy for $199</a>
										</div></li>
									<li><a href="#"><img src="img/items/5.png" alt=""
											class="img-responsive" /></a>
										<div class="carousel_caption">
											<h5>
												<a href="#">Lorem estsum ipsum</a>
											</h5>
											<p>Something about the product goes here. Not More than 2
												lines.</p>
											<a href="#" class="btn btn-info btn-sm"><i
												class="icon-shopping-cart"></i> Buy for $199</a>
										</div></li>
									<li><a href="#"><img src="img/items/6.png" alt=""
											class="img-responsive" /></a>
										<div class="carousel_caption">
											<h5>
												<a href="#">Praesent estsum massa</a>
											</h5>
											<p>Something about the product goes here. Not More than 2
												lines.</p>
											<a href="#" class="btn btn-info btn-sm"><i
												class="icon-shopping-cart"></i> Buy for $199</a>
										</div></li>
									<li><a href="#"><img src="img/items/7.png" alt=""
											class="img-responsive" /></a>
										<div class="carousel_caption">
											<h5>
												<a href="#">Praesent estsum etium</a>
											</h5>
											<p>Something about the product goes here. Not More than 2
												lines.</p>
											<a href="#" class="btn btn-info btn-sm"><i
												class="icon-shopping-cart"></i> Buy for $199</a>
										</div></li>
								</ul>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Recent posts Ends -->


	<!-- Catchy starts -->
	<div class="catchy blocky">
		<div class="catchy-inner1">
			<div class="catchy-inner2">
				<div class="container">
					<div class="row">
						<div class="col-md-5">
							<div class="catchy-subscribe">
								<h3>Join Us!</h3>
								<p>Lorem tristique est sit amet diam ipsum dolor sit diam
									interdum diam ipsum dolor sit diam ipsum dolor sit tristique
									semper.</p>
								<br />
								<form class="form-inline" role="form">
									<div class="form-group">
										<input type="text" class="form-control "
											id="exampleInputEmail2" placeholder="Enter your email">
									</div>
									<button type="submit" class="btn btn-danger">Subscribe</button>
								</form>

							</div>
						</div>
						<div class="col-md-7">

							<div class="report">
								<div class="report-bor">
									<div class="row">
										<!-- Report data starts -->
										<div class="col-md-4 col-sm-4">
											<div class="report-data">
												<div class="row">
													<div class="col-md-4 col-sm-4 col-xs-4">
														<!-- Icon -->
														<div class="report-icon">
															<i class="icon-group color"></i>
														</div>
													</div>
													<div class="col-md-8 col-md-8 col-xs-8">
														<!-- Details -->
														<span class="report-big color">40,000</span> <span>Customers</span>
													</div>
												</div>
											</div>
										</div>
										<!-- Report data ends -->

										<!-- Report data starts -->
										<div class="col-md-4 col-sm-4">
											<div class="report-data">
												<div class="row">
													<div class="col-md-4 col-sm-4 col-xs-4">
														<!-- Icon -->
														<div class="report-icon">
															<i class="icon-calendar color"></i>
														</div>
													</div>
													<div class="col-md-8 col-md-8 col-xs-8">
														<!-- Details -->
														<span>Since</span><span class="report-big color">1857</span>
													</div>
												</div>
											</div>
										</div>
										<!-- Report data ends -->

										<!-- Report data starts -->
										<div class="col-md-4 col-sm-4">
											<div class="report-data">
												<div class="row">
													<div class="col-md-4 col-sm-4 col-xs-4">
														<!-- Icon -->
														<div class="report-icon">
															<i class="icon-android color"></i>
														</div>
													</div>
													<div class="col-md-8 col-md-8 col-xs-8">
														<!-- Details -->
														<span class="report-big color">30,000</span> <span>Revenue</span>
													</div>
												</div>
											</div>
										</div>
										<!-- Report data ends -->

									</div>

									<hr class="hidden-xs">

									<div class="row">

										<!-- Report data starts -->
										<div class="col-md-4 col-sm-4">
											<div class="report-data">
												<div class="row">
													<div class="col-md-4 col-sm-4 col-xs-4">
														<!-- Icon -->
														<div class="report-icon">
															<i class="icon-building color"></i>
														</div>
													</div>
													<div class="col-md-8 col-md-8 col-xs-8">
														<!-- Details -->
														<span class="report-big color">150 +</span> <span>Companies</span>
													</div>
												</div>
											</div>
										</div>
										<!-- Report data ends -->

										<!-- Report data starts -->
										<div class="col-md-4 col-sm-4">
											<div class="report-data">
												<div class="row">
													<div class="col-md-4 col-sm-4 col-xs-4">
														<!-- Icon -->
														<div class="report-icon">
															<i class="icon-signal color"></i>
														</div>
													</div>
													<div class="col-md-8 col-md-8 col-xs-8">
														<!-- Details -->
														<span class="report-big color">50.60%</span> <span>Growth</span>
													</div>
												</div>
											</div>
										</div>
										<!-- Report data ends -->

										<!-- Report data starts -->
										<div class="col-md-4 col-sm-4">
											<div class="report-data">
												<div class="row">
													<div class="col-md-4 col-sm-4 col-xs-4">
														<!-- Icon -->
														<div class="report-icon">
															<i class="icon-truck color"></i>
														</div>
													</div>
													<div class="col-md-8 col-md-8 col-xs-8">
														<!-- Details -->
														<span class="report-big color">100 +</span> <span>Employees</span>
													</div>
												</div>
											</div>
										</div>
										<!-- Report data ends -->

									</div>

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Catchy ends -->

	<!-- CTA Starts -->
	<div class="blocky">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="cta">
						<div class="row">
							<div class="col-md-8 col-sm-8">
								<h5>
									<i class="icon-angle-right"></i> Lorem trist iquest <span
										class="color">siamet diam</span> ipsum dolor sitamt
								</h5>
							</div>
							<div class="col-md-4 col-sm-4">
								<div class="cta-buttons pull-right">
									<a href="#" class="btn btn-info btn-lg">Download</a> &nbsp; <a
										href="#" class="btn btn-danger btn-lg">Get It Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- CTA Ends -->

	<!-- Footer starts -->
	<footer>
		<div class="container">

			<div class="row">

				<div class="col-md-4 col-sm-4">
					<div class="fwidget">

						<h4>
							Oslon de<span class="color">'</span> Techno
						</h4>
						<hr />
						<p>Duis leo risus, vehicula luctus nunc. Quiue rhoncus, a
							sodales enim arcu quis turpis. Duis leo risus, condimentum ut
							posuere ac, vehicula luctus nunc. Quisque rhoncus, a sodales enim
							arcu quis turpis.</p>

						<div class="social">
							<a href="#" class="facebook"><i class="icon-facebook"></i></a> <a
								href="#" class="twitter"><i class="icon-twitter"></i></a> <a
								href="#" class="google-plus"><i class="icon-google-plus"></i></a>
							<a href="#" class="linkedin"><i class="icon-linkedin"></i></a> <a
								href="#" class="pinterest"><i class="icon-pinterest"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-4 col-sm-4">
					<div class="fwidget">
						<h4>Categories</h4>
						<hr />
						<ul>
							<li><a href="#">Sed eu leo orci, condimentum gravida
									metus</a></li>
							<li><a href="#">Etiam at nulla ipsum, in rhoncus purus</a></li>
							<li><a href="#">Fusce vel magna faucibus felis dapibus
									facilisis</a></li>
							<li><a href="#">Vivamus scelerisque dui in massa</a></li>
							<li><a href="#">Pellentesque eget adipiscing dui semper</a></li>
						</ul>
					</div>
				</div>



				<div class="col-md-4 col-sm-4">
					<div class="fwidget">

						<h4>Get In Touch</h4>
						<hr />
						<div class="address">
							<p>
								<i class="icon-home color contact-icon"></i> #12, Plot No.14,
								Raj Karmara Street,
							</p>
							<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5th Stage, Koramangala,
								Madiwala,</p>
							<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Bangalore - 493922,
								Karananana.</p>
							<p>
								<i class="icon-phone color contact-icon"></i> +94-948-323-5532
							</p>
							<p>
								<i class="icon-envelope color contact-icon"></i> <a
									href="mailto:something@gmail.com">some.thing@gmail.com</a>
							</p>
						</div>

					</div>
				</div>

			</div>



			<hr />

			<div class="copy text-center">
				Copyright 2013 &copy; - <a
					href="http://responsivewebinc.com/bootstrap-themes">Bootstrap
					Themes</a>
			</div>
		</div>
	</footer>
	<!-- Footer ends -->

	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>

	<!-- Javascript files -->
	<!-- jQuery -->
	<script src="resource/js/jquery.js"></script>
	<!-- Bootstrap JS -->
	<script src="resource/js/bootstrap.min.js"></script>
	<!-- Dropdown menu -->
	<script src="resource/js/ddlevelsmenu.js"></script>
	<!-- CaroFredSel -->
	<script src="resource/js/jquery.carouFredSel-6.2.1-packed.js"></script>
	<!-- Countdown -->
	<script src="resource/js/jquery.countdown.min.js"></script>
	<!-- jQuery Navco -->
	<script src="resource/js/jquery.navgoco.min.js"></script>
	<!-- Filter for support page -->
	<script src="resource/js/filter.js"></script>
	<!-- Respond JS for IE8 -->
	<script src="resource/js/respond.min.js"></script>
	<!-- HTML5 Support for IE -->
	<script src="resource/js/html5shiv.js"></script>
	<!-- Custom JS -->
	<script src="resource/js/custom.js"></script>
</body>
</html>