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
				    		 $('#cartBody').empty();
				    		 $('#cartBody').append(response);
				     },  
				     error : function(e) {  
				      alert('Error: ' + e);   
				     }  
				    }); 
				}
			});

		}
	 
  });
  
 