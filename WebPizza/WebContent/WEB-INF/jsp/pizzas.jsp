<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<!-- Title here -->
<title>Items - Olson Kart</title>
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
	<div class="modal fade" id="shoppingcart" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Shopping Cart</h4>
				</div>
				<div class="modal-body">

					<!-- Items table -->
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Name</th>
								<th>Quantity</th>
								<th>Price</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="single-item.html">HTC One</a></td>
								<td>2</td>
								<td>$250</td>
							</tr>
							<tr>
								<td><a href="single-item.html">Apple iPhone</a></td>
								<td>1</td>
								<td>$502</td>
							</tr>
							<tr>
								<td><a href="single-item.html">Galaxy Note</a></td>
								<td>4</td>
								<td>$1303</td>
							</tr>
							<tr>
								<th></th>
								<th>Total</th>
								<th>$2405</th>
							</tr>
						</tbody>
					</table>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Continue
						Shopping</button>
					<button type="button" class="btn btn-info">Checkout</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!-- Logo & Navigation starts -->

	<div class="header">
		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-2">
					<!-- Logo -->
					<div class="logo">
						<h1>
							<a href="index.html">OlsonKart</a>
						</h1>
					</div>
				</div>
				<div class="col-md-6 col-sm-5">
					<!-- Navigation menu -->
					<div class="navi">
						<div id="ddtopmenubar" class="mattblackmenu">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><a href="#" rel="ddsubmenu1">Account</a>
									<ul id="ddsubmenu1" class="ddsubmenustyle">
										<li><a href="account.html">My Account</a></li>
										<li><a href="viewcart.html">View Cart</a></li>
										<li><a href="checkout.html">Checkout</a></li>
										<li><a href="wishlist.html">Wish List</a></li>
										<li><a href="orderhistory.html">Order History</a></li>
										<li><a href="editprofile.html">Edit Profile</a></li>
										<li><a href="confirmation.html">Confirmation</a></li>
									</ul></li>
								<li><a href="#" rel="ddsubmenu1">Pages</a>
									<ul id="ddsubmenu1" class="ddsubmenustyle">
										<li><a href="404.html">404</a></li>
										<li><a href="faq.html">FAQ</a></li>
										<li><a href="blog.html">Blog</a></li>
										<li><a href="careers.html">Careers</a>
										<li><a href="support.html">Support</a></li>
										<li><a href="aboutus.html">About</a></li>
									</ul></li>
								<li><a href="#" rel="ddsubmenu1">Computers</a>
									<ul id="ddsubmenu1" class="ddsubmenustyle">
										<li><a href="items.html">Desktop</a></li>
										<li><a href="items.html">Laptop</a></li>
										<li><a href="items.html">NetBook</a></li>
										<li><a href="items.html">All-In-One PC</a>
										<li><a href="items.html">Alienware</a></li>
									</ul></li>
								<li><a href="contactus.html">Contact</a></li>
							</ul>
						</div>
					</div>

					<!-- Dropdown NavBar -->
					<div class="navis"></div>

				</div>

				<div class="col-md-4 col-sm-5">
					<div class="kart-links">
						<a href="login.html">Login</a> <a href="register.html">Signup</a>
						<a data-toggle="modal" href="#shoppingcart"><i
							class="icon-shopping-cart"></i> 3 Items - $300</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Logo & Navigation ends -->

	<!-- Page title -->
	<div class="page-title">
		<div class="container">
			<h2>
				<i class="icon-desktop color"></i> Laptops & Desktops <small>Subtext
					for header</small>
			</h2>
			<hr />
		</div>
	</div>
	<!-- Page title -->

	<!-- Page content -->

	<div class="shop-items">
		<div class="container">

			<div class="row">

				<div class="col-md-9 col-md-push-3">



					<!-- Items List starts -->

					<div class="row">
						<!-- Item #1 -->
							<c:forEach items="${listPizza}" var="pizza">
						<div class="col-md-4 col-sm-4 col-xs-6">
							
						
							<div class="item">
								<!-- Use the below link to put HOT icon -->
								<div class="item-icon">
									<span>HOT</span>
								</div>
								<!-- Item image -->
								<div class="item-image">
									<a href="single-item.html"><img src="img/items/2.png"
										alt="" class="img-responsive" /></a>
								</div>
								<!-- Item details -->
								<div class="item-details">
									<!-- Name -->
									<h5>
										<a href="single-item.html"><c:out value="${pizza.name}" /> </a>
									</h5>
									<div class="clearfix"></div>
									<p style="font-size: 80%">
									<c:forEach items="${pizza.ingredients}" var="ingredient">
									<!-- Para. Note more than 2 lines. -->
									<c:out value="${ingredient.name}" />
									</c:forEach>
									</p>
									<hr />
									<!-- Price -->
									<div class="item-price pull-left">$360</div>
									<!-- Add to cart -->
									<div class="pull-right">
										<a href="#" class="btn btn-danger btn-sm">Add to Cart</a>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
							</c:forEach>

						

					</div>




					<!-- Items List ends -->


					<div class="row">
						<div class="col-md-12">
							<!-- Pagination -->
							<ul class="pagination">
								<li><a href="#">&laquo;</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
						</div>
					</div>

				</div>


				<div class="col-md-3 col-md-pull-9">
					<div class="sidey">
						<ul class="nav">
							<li><a href="index.html"><i class="icon-home"></i>
									&nbsp;Home</a>
							<li><a href="#"><i class="icon-mobile-phone"></i>
									&nbsp;Our menu</a>
								<ul>
									<li><a href="items.html">Apple</a></li>
									<li><a href="items.html">Samsung</a></li>
									<li><a href="items.html">Motorola</a></li>
									<li><a href="items.html">Nokia</a></li>
								</ul></li>
							<li><a href="#"><i class="icon-laptop"></i> &nbsp;Build
									your pizza</a>
								<ul>
									<li><a href="items.html">Apple</a></li>
									<li><a href="items.html">Samsung</a></li>
									<li><a href="items.html">Motorola</a></li>
									<li><a href="items.html">Nokia</a></li>
								</ul></li>
							<li><a href="#"><i class="icon-briefcase"></i>
									&nbsp;Created by you</a>
								<ul>
									<li><a href="items.html">Apple</a></li>
									<li><a href="items.html">Samsung</a></li>
									<li><a href="items.html">Motorola</a></li>
									<li><a href="items.html">Nokia</a></li>
								</ul></li>
						</ul>
					</div>

					<!-- Sidebar items (featured items)-->

					<div class="sidebar-items">

						<h5>Featured Items</h5>

						<!-- Item #1 -->
						<div class="sitem">
							<div class="onethree-left">
								<!-- Image -->
								<a href="single-item.html"><img src="img/items/2.png" alt=""
									class="img-responsive" /></a>
							</div>
							<div class="onethree-right">
								<!-- Title -->
								<a href="single-item.html">HTC One V</a>
								<!-- Para -->
								<p>Aenean ullamcorper justo tincidunt justo aliquet.</p>
								<!-- Price -->
								<p class="bold">$199</p>
							</div>
							<div class="clearfix"></div>
						</div>

						<div class="sitem">
							<div class="onethree-left">
								<a href="single-item.html"><img src="img/items/3.png" alt=""
									class="img-responsive" /></a>
							</div>
							<div class="onethree-right">
								<a href="single-item.html">Sony One V</a>
								<p>Aenean ullamcorper justo tincidunt justo aliquet.</p>
								<p class="bold">$399</p>
							</div>
							<div class="clearfix"></div>
						</div>

						<div class="sitem">
							<div class="onethree-left">
								<a href="single-item.html"><img src="img/items/4.png" alt=""
									class="img-responsive" /></a>
							</div>
							<div class="onethree-right">
								<a href="single-item.html">Nokia One V</a>
								<p>Aenean ullamcorper justo tincidunt justo aliquet.</p>
								<p class="bold">$159</p>
							</div>
							<div class="clearfix"></div>
						</div>

						<div class="sitem">
							<div class="onethree-left">
								<a href="single-item.html"><img src="img/items/5.png" alt=""
									class="img-responsive" /></a>
							</div>
							<div class="onethree-right">
								<a href="single-item.html">Samsung One V</a>
								<p>Aenean ullamcorper justo tincidunt justo aliquet.</p>
								<p class="bold">$299</p>
							</div>
							<div class="clearfix"></div>
						</div>

					</div>
				</div>
			</div>

			<div class="sep-bor"></div>
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