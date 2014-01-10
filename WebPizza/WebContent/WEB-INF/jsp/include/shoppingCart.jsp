 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
               <thead>
                <tr>
                  <th>Name</th>
                  <th>Quantity</th>
                  <th>Price</th>
                </tr>
              </thead>
              <tbody id="cartBody">
             <c:if test="${cart != null }">
              <c:forEach var="pizza" items="${cart.pizzaQuantity}" >
              <tr>
              	<td>${pizza.key.name}</td>
              	<td>${pizza.value}</td>
              	<td><c:out value="${pizza.key.prize * pizza.value}" /></td>
              </tr>
              </c:forEach>
              <tr>
              <th></th>
              <th>Total</th>
              <th>${cart.totalprice}</th>
              </tr>
              </c:if>
              </tbody>
            </table>
            
           </div>
           <div class="modal-footer">
             <button type="button" class="btn btn-default" data-dismiss="modal">Continue Shopping</button>
             <button type="button" class="btn btn-info">Checkout</button>
           </div>
         </div><!-- /.modal-content -->
       </div><!-- /.modal-dialog -->
     </div><!-- /.modal -->
     
    <!-- End Shopping cart Modal -->