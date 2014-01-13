 $(document).ready(function() {
	 
	 $('.updateItem').click(function(){
		 var id=$(this).attr('id').split("-")[1];
		 var currentVal=$("#quantity-"+id).val();
		    $.ajax({  
			     type : "Post",   
			     url : "updateCart.html",   
			     data : "idPizza="  + id+"&quantity="+currentVal,  
			     success : function(response) {
			    	 	
			    	 	var tmp = response.split("*");
			    	 	$("#price-"+id).empty();
			    	 	$("#price-"+id).html("&euro;"+tmp[0]);
			    		 $('#cartBody').empty();
			    		 $('#cartBody').append(tmp[1]);
			    		 $('#shoppingCartPrice').empty();
			    		 $('#shoppingCartPrice').append(tmp[2]);
			    		 
			    		 $('#totalPriceCart2').empty();
			    		 $('#totalPriceCart2').html("&euro;" +tmp[3]);
			     },  	
			     error : function(e) {  
			      alert('Error: ' + e);   
			     }  
			    }); 
			
	 });
	 
	 $('.removeItem').click(function(){
		 var id=$(this).attr('id').split("-")[1];
		    $.ajax({  
			     type : "Post",   
			     url : "removeItemCart.html",   
			     data : "idPizza="  + id,
			     success : function(response) {
			    	 	$('#tr-'+id).remove();
			    	 	var tmp = response.split("*");
			    		 $('#cartBody').empty();
			    		 $('#cartBody').append(tmp[0]);
			    		 $('#shoppingCart').empty();
			    		 $('#shoppingCart').append(tmp[1]);
			    		 $('#totalPriceCart').empty();
			    		 $('#totalPriceCart').html("&euro;" +tmp[2]);
			     },  	
			     error : function(e) {  
			      alert('Error: ' + e);   
			     }  
			    }); 
			
	 });
	 
});
  
