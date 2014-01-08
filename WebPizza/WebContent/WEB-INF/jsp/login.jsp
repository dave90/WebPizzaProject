<!DOCTYPE html>
<html>
	<head>
		<!-- Title here -->
		<title>Login</title>
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
                           <li><a href="login.html" rel="ddsubmenu1">Account</a>
										<ul id="ddsubmenu1" class="ddsubmenustyle">
                                 <li><a href="account.html">My Account</a></li>
											<li><a href="viewcart.html">View Cart</a></li>
                                 <li><a href="checkout.html">Checkout</a></li>
                                 <li><a href="wishlist.html">Wish List</a></li>
                                 <li><a href="orderhistory.html">Order History</a></li>
                                 <li><a href="editprofile.html">Edit Profile</a></li>
	
										</ul>
									</li>
									
									<li><a href="testHome">Pizza</a>
									<li><a href="#" rel="ddsubmenu2">Employee</a>
									 <ul id="ddsubmenu2" class="ddsubmenustyle">
									 	<li><a href="adminLogin.html">Administrator</a></li>
									 	<li><a href="chefLogin.html">Pizza-Chef</a></li>
									 	<li><a href="deliverymanLogin.html">Deliveryman</a></li></ul>
										
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
     
      <!-- Page content -->
      
      <div class="blocky">
         <div class="container">
            <div class="row">
               <div class="col-md-6">
                  <div class="reg-login-info">
                     <h2>Login to Access Amazing Benefits <span class="color">!!!</span></h2>
                     <img src="${img}" width="400px" alt="" class="img-responsive img-thumbnail" />
                     <p></p>
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="register-login">
                     <div class="cool-block">
                        <div class="cool-block-bor">
                        
                           <h3>Login</h3>
                           <form class="form-horizontal" role="form" action="${actionUrl}" method="post">
                             <div class="form-group">
                               <label for="inputUser" class="col-lg-2 control-label">User</label>
                               <div class="col-lg-10">
                                 <input type="text" class="form-control" id="inputUser" name="User" placeholder="User">
                               </div>
                             </div>
                             <div class="form-group">
                               <label for="inputPassword" class="col-lg-2 control-label">Password</label>
                               <div class="col-lg-10">
                                 <input type="password" class="form-control" id="inputPassword" name="Password" placeholder="Password">
 	                              <p style="color: red;"><strong>${notifyLog}</strong></p>
                               </div>
                             </div>
                             <div class="form-group">
                               <div class="col-lg-offset-2 col-lg-10">
                                 <button type="submit" class="btn btn-info">Sign in</button>
                                 <button type="reset" class="btn btn-default">Reset</button>
                               </div>
                             </div>
                           </form>
                           
                        </div>
                     </div>   
                  </div>
               </div>
            </div>
            <div class="sep-bor"></div>
         </div>
      </div>
     
          
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