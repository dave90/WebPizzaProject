<!DOCTYPE html>
<html>
	<head>
		<!-- Title here -->
		<title>Web Pizza I</title>
		<!-- Description, Keywords and Author -->
		<meta name="description" content="Your description">
		<meta name="keywords" content="Your,Keywords">
		<meta name="author" content="ResponsiveWebInc">
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
      
      <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,600italic,600' rel='stylesheet' type='text/css'>
		
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
     <div class="modal fade" id="shoppingcart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
       <div class="modal-dialog">
         <div class="modal-content">
           <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
             <h4 class="modal-title">Shopping Cart</h4>
           </div>
           <div class="modal-body">
           
            <!-- Items table -->
            <table class="table table-striped">
              <!-- PUT CART OBJECT -->
            </table>
            
           </div>
           <div class="modal-footer">
             <button type="button" class="btn btn-default" data-dismiss="modal">Continue Shopping</button>
             <button type="button" class="btn btn-info">Checkout</button>
           </div>
         </div><!-- /.modal-content -->
       </div><!-- /.modal-dialog -->
     </div><!-- /.modal -->
           
      <!-- Logo & Navigation starts -->
      
      <div class="header">
         <div class="container">
            <div class="row">
               <div class="col-md-2 col-sm-2">
                  <!-- Logo -->
                  <div class="logo">
                     <h1><a href="${pageContext.request.contextPath}">Web Pizza</a></h1>
                  </div>
               </div>
               <div class="col-md-6 col-sm-5">
                  <!-- Navigation menu -->
						<div class="navi">
							<div id="ddtopmenubar" class="mattblackmenu">
								<ul>
									<li><a href="${pageContext.request.contextPath}">Home</a></li>
                           <li><a href="#" rel="ddsubmenu1">Account</a>
										<ul id="ddsubmenu1" class="ddsubmenustyle">
                                 <li><a href="account.html">My Account</a></li>
											<li><a href="viewcart.html">View Cart</a></li>
                                 <li><a href="checkout.html">Checkout</a></li>
                                 <li><a href="wishlist.html">Wish List</a></li>
                                 <li><a href="orderhistory.html">Order History</a></li>
                                 <li><a href="editprofile.html">Edit Profile</a></li>
	
										</ul>
									</li>
									
									<li><a href="#">Pizza</a>
									<li><a href="#" rel="ddsubmenu2">Employee</a>
									 <ul id="ddsubmenu2" class="ddsubmenustyle">
									 	<li><a hfer="#">Administrator</a></li>
									 	<li><a hfer="#">Pizza-Chef</a></li>
									 	<li><a hfer="#">Deliveryman</a></li></ul>
										
									</li>                       
									<li><a href="contactus.html">Contact</a></li>
								</ul>
							</div>
						</div>

						<!-- Dropdown NavBar -->
                  <div class="navis"></div>                  
                  
               </div>
               
               <div class="col-md-4 col-sm-5">
                  <div class="kart-links">
                     <a href="login.html">Login</a> 
                     <a href="register.html">Signup</a>
                     <a data-toggle="modal" href="#shoppingcart"><i class="icon-shopping-cart"></i> Items<!-- Add Prize Cart --></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      <!-- Logo & Navigation ends -->
      
      <div class="clearfix"></div>
      
         <!-- Carousel starts -->
              
         <div id="carousel-example-generic" class="carousel slide">
           <!-- Indicators -->
           <ol class="carousel-indicators">
             <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
             <li data-target="#carousel-example-generic" data-slide-to="1"></li>
             <li data-target="#carousel-example-generic" data-slide-to="2"></li>
           </ol>

           <!-- Wrapper for slides -->
           <div class="carousel-inner">
             <!-- Item -->
             <div class="item active animated fadeInRight">
               <img src="resource/img/pizza/real-pizza2.jpg" alt="" class="img-responsive" />
               <div class="carousel-caption">
                 <h2 class="animated fadeInLeftBig"><strong> Order your Pizza</strong></h2>
                 <p class="animated fadeInRightBig">Choose between our pizza or <strong>build</strong> your own pizza.</p>
                 <a href="#" class="animated fadeInLeftBig btn btn-info btn-lg">Choose now</a>
               </div>
             </div>

             <div class="item animated fadeInRight">
               <img src="resource/img/pizza/pizza-deliverymanr.jpg" alt="" class="img-responsive" />
               <div class="carousel-caption">
                 <h2 class="animated fadeInLeftBig">Delivery Service</h2>
                 <p class="animated fadeInRightBig"><strong>Track</strong> your pizza and pay on-line. </p>
                 <a href="#" class="animated fadeInLeftBig btn btn-info btn-lg">Orde now</a>
               </div>
             </div>
             
                     
           </div>

           <!-- Controls -->
           <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
             <span class="icon-prev"></span>
           </a>
           <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
             <span class="icon-next"></span>
           </a>
         </div>
         
         <!-- carousel ends -->
		
      <!-- Hero starts -->
      
      <div class="hero">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <!-- Catchy title -->
                  <h3>The <span class="color">fastest</span> way to eat your <span class="color">pizza</span></h3>
                  <p>Web Pizza allows you to order when and where you want the best Italian pizza</p>
               </div>
            </div>
          <div class="sep-bor"></div>
         </div>
      </div>
      
      <!-- Hero ends -->  
      
      <!-- Items List starts -->

      <div class="shop-items blocky">
        <div class="container">
          
         <div class="row">
            <!-- Item #1 -->
            <div class="col-md-3 col-sm-4 col-xs-6">
              <div class="item">
                <!-- Use the below link to put HOT icon -->
                <div class="item-icon"><span>HOT</span></div>
                <!-- Item image -->
                <div class="item-image">
                  <a href="single-item.html"><img src="resource/img/pizza/pizza-cartoon.png" alt="" class="img-responsive"/></a>
                </div>
                <!-- Item details -->
                <div class="item-details">
                  <!-- Name -->
                  <h5><a href="single-item.html">Pizza Margherita</a></h5>
                  <div class="clearfix"></div>
                  <!-- Para. Note more than 2 lines. -->
                  <p>Ingredienti: Pomodoro, Mozzarella-RICORDA HOT QUANDO DISCOUNT!=0</p>
                  <hr />
                  <!-- Price -->
                  <div class="item-price pull-left">&euro;5</div>
                  <!-- Add to cart -->
                  <div class="pull-right"><a href="#" class="btn btn-danger btn-sm">Add to Cart</a></div>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div>

            <!-- Item #2 -->
            <div class="col-md-3 col-sm-4 col-xs-6">
              <div class="item">
                <!-- Item image -->
                <div class="item-image">
                  <a href="single-item.html"><img src="resource/img/pizza/pizza-cartoon.png" alt=""  class="img-responsive"/></a>
                </div>
                <!-- Item details -->
                <div class="item-details">
                  <!-- Name -->
                  <h5><a href="single-item.html">Pizza Marinara</a></h5>
                  <!-- Para. Note more than 2 lines. -->
                  <p>Ingredienti: Pomodoro</p>
                  <hr />
                  <!-- Price -->
                  <div class="item-price pull-left">&euro;3</div>
                  <!-- Add to cart -->
                  <div class="pull-right"><a href="#" class="btn btn-danger btn-sm">Add to Cart</a></div>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div>  

            <div class="col-md-3 col-sm-4 col-xs-6">
              <div class="item">
                <!-- Item image -->
                <div class="item-image">
                  <a href="single-item.html"><img src="resource/img/pizza/pizza-cartoon.png" alt="" class="img-responsive" /></a>
                </div>
                <!-- Item details -->
                <div class="item-details">
                  <!-- Name -->
                  <h5><a href="single-item.html">Pizza Viennese</a></h5>
                  <!-- Para. Note more than 2 lines. -->
                  <p>Ingredienti: Pomodoro, Mozzarella, Prosciutto Cotto</p>
                  <hr />
                  <!-- Price -->
                  <div class="item-price pull-left">&euro;6</div>
                  <!-- Add to cart -->
                  <div class="pull-right"><a href="#" class="btn btn-danger btn-sm">Add to Cart</a></div>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div>

            <div class="col-md-3 col-sm-4 col-xs-6">
              <div class="item">
                <!-- Item image -->
                <div class="item-image">
                  <a href="single-item.html"><img src="resource/img/pizza/pizza-cartoon.png" alt=""  class="img-responsive"/></a>
                </div>
                <!-- Item details -->
                <div class="item-details">
                  <!-- Name -->
                  <h5><a href="single-item.html">Pizza Capricciosa</a></h5>
                  <!-- Para. Note more than 2 lines. -->
                  <p>Ingredienti: Pomodoro, Funghi, Olive,Carciofi, Mozzarella</p>
                  <hr />
                  <!-- Price -->
                  <div class="item-price pull-left">&euro;100</div>
                  <!-- Add to cart -->
                  <div class="pull-right"><a href="#" class="btn btn-danger btn-sm">Add to Cart</a></div>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div>
         </div>
         
          
        </div>
      </div>

      <!-- Items List ends -->

      
      <!-- Recent posts CarouFredSel Starts -->
	
      <div class="recent-posts blocky">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <!-- Section title -->
                  <div class="section-title">
                     <h4><i class="icon-desktop color"></i> &nbsp;Your pizza</h4>
                  </div>    
                  
                  <div class="row">
                     <div class="col-md-12">
                        <div class="my_carousel">
                        
                           <div class="carousel_nav pull-right">
                               <!-- Carousel navigation -->
                               <a class="prev" id="car_prev" href="#"><i class="icon-chevron-left"></i></a>
                               <a class="next" id="car_next" href="#"><i class="icon-chevron-right"></i></a>
                           </div>
                          
                           <ul id="carousel_container">
                              <!-- Carousel item -->
                              <li>
                                 <a href="#"><img src="resource/img/pizza/pizza-cartoon.png" alt="" class="img-responsive"/></a>
                                 <div class="carousel_caption">
                                    <h5><a href="#">Pizza niente</a></h5>
                                    <p>Ingredienti: Niente</p>
                                    <a href="#" class="btn btn-info btn-sm"><i class="icon-shopping-cart"></i> Buy for $199</a>
                                 </div>
                              </li>
                              <li>
                                 <a href="#"><img src="resource/img/pizza/pizza-cartoon.png" alt="" class="img-responsive"/></a>
                                 <div class="carousel_caption">
                                     <h5><a href="#">Pizza Tutto</a></h5>
                                     <p>Ingredienti: Pomodoro, Mozzarella, Prosciutto Cotto, Funghi, Salsiccia, Carciofi</p>
                                     <a href="#" class="btn btn-info btn-sm"><i class="icon-shopping-cart"></i> Buy for $199</a>
                                 </div>
                              </li>

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
           
      
  
      
      <!-- Footer starts -->
      <footer>
         <div class="container">
         
               <div class="row">

                        <div class="col-md-4 col-sm-4">
                           <div class="fwidget">
                           
                              <h4>Oslon de<span class="color">'</span> Techno</h4>
                              <hr />
                              <p>Follow us on facebook, twitter, google+, linkedin & pinterest</p>
                              
                              <div class="social">
                                 <a href="#" class="facebook"><i class="icon-facebook"></i></a>
                                 <a href="#" class="twitter"><i class="icon-twitter"></i></a>
                                 <a href="#" class="google-plus"><i class="icon-google-plus"></i></a>
                                 <a href="#" class="linkedin"><i class="icon-linkedin"></i></a>
                                 <a href="#" class="pinterest"><i class="icon-pinterest"></i></a>
                              </div>
                           </div>
                       </div>

                       <div class="col-md-4 col-sm-4">
                         <div class="fwidget">
                           <h4>Feature</h4>
                           <hr />
                           <ul>
                             <li><a>Possibility to build your own pizza</a></li>
                             <li><a >Instant location for your pizza</a></li>
                             <li><a >Tracking the status of your pizza</a></li>
                             <li><a >Possibility to pay online</a></li>
                           </ul>
                         </div>
                       </div>        

                       

                       <div class="col-md-4 col-sm-4">
                         <div class="fwidget">
                           
                           <h4>Get In Touch</h4>
                           <hr />
                           <div class="address">
                              <p><i class="icon-home color contact-icon"></i> Cosenza Rende, </p>
                              <p> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; via fasulla 123</p>
                              <p><i class="icon-phone color contact-icon"></i> +39-323-55322</p>
                              <p><i class="icon-envelope color contact-icon"></i> <a href="mailto:webPizza@gmail.com">webPizza@gmail.com</a></p>
                           </div>
                           
                         </div>
                       </div>

                     </div>

         
         
            <hr />

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