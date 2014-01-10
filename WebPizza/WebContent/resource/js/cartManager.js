 $(document).ready(function() {
	 	var numButtons = $(".count").attr('id');
	 	
		for (var i = 0; i < numButtons; ++i) {

			$("#addCart" + i).click(function() {
				var str = $(this).attr('id');
				var res = str.split("addCart");
				var currentVal = parseInt($("#qty" + res[1]).val());
				var idPizza= $("#idPizza"+res[1]).val();
				if(currentVal!=0){
			    $.ajax({  
				     type : "Post",   
				     url : "addToCart.html",   
				     data : "idPizza="  + idPizza+"&quantity="+currentVal,  
				     success : function(response) {  
				    	 	var tmp = response.split("*");
				    		 $('#cartBody').empty();
				    		 $('#cartBody').append(tmp[0]);
				    		 $('#shoppingCart').empty();
				    		 $('#shoppingCart').append(tmp[1]);
				     },  
				     error : function(e) {  
				      alert('Error: ' + e);   
				     }  
				    }); 
				}
			});

		}
	 
  });
  
 