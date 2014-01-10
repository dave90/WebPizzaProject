 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
									
									<li><a href="pizzaList.html">Pizza</a>
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
                    <a href="login.html">
					<c:choose>
  						<c:when test="${client.username != null}"><c:out value="${client.username}"/></c:when>
					    <c:otherwise><c:out value="login"/></c:otherwise>
					</c:choose>                  	
                    </a> 
                    <a href="register.html">
					<c:choose>
  						<c:when test="${client.username != null}"><c:out value="logout"/></c:when>
					    <c:otherwise><c:out value="signup"/></c:otherwise>
					</c:choose>  
                    </a>

                     <a data-toggle="modal" href="#shoppingcart"><i class="icon-shopping-cart"></i> Items<!-- Add Prize Cart --></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      <!-- Logo & Navigation ends -->