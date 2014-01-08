<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<!-- Title here -->
		<title>Web Pizza</title>
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
 		<jsp:include page="include/shoppingCart.jsp" />
 	  <!-- Shopping cart Modal -->	
           
      <!-- Logo & Navigation starts -->            
 		<jsp:include page="include/header.jsp" />
 	  <!-- Logo & Navigation end -->
 		
      
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
		<jsp:include page="include/footer.jsp" />
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
