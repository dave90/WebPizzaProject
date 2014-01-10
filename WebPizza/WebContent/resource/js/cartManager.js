 $(document).ready(function() {
	 	var numButtons = $(".count").attr('id');
	 	
		for (var i = 0; i < numButtons; ++i) {

			$("#addCart" + i).click(function() {
				var str = $(this).attr('id');
				var res = str.split("addCart");
				var currentVal = parseInt($("#qty" + res[1]).val());
				var idPizza= $("#idPizza"+res[1]).val();
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
			});

		}
	 
	  $("#inputUser").change(function(){
		  var usr=$("#inputUser").val();
		  doAjaxPostExistUsername(usr);
	  });
  });
  
  function doAjaxPostExistUsername(usr) {  
	    $.ajax({  
	     type : "Post",   
	     url : "existClientUser.html",   
	     data : "user="  + usr,  
	     success : function(response) {  
	    	 if(response == "OK"){
	    		 $('#existUser').css('color','green');
	    		 $('#existUser').html("&#10004");
	    	 }else{
	    		 $('#existUser').css("color","red"); 
	    		 $('#existUser').text(response);
	    	 }
	     },  
	     error : function(e) {  
	      alert('Error: ' + e);   
	     }  
	    });  
}  