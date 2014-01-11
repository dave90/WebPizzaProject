 $(document).ready(function() {

			$("#ingredients").click(function() {
				chargeIngredients();
				
			});
			
			
			

	 
  });
 
 function chargeIngredients(){
		    $.ajax({  
			     type : "Post",   
			     url : "adminIgredients.html",   
			     data : "",  
			     success : function(response) {  
			    	 	$("#mainDiv").empty();
			    	 	$("#mainDiv").html(response);
			     },  
			     error : function(e) {  
			      alert('Error: ' + e);   
			     }  
			    }); 
 }
 
 function addIngredients(){
	    $.ajax({  
		     type : "Post",   
		     url : "addIngredients.html",   
		     data : "Name="+$("#newName").val()+"&Cost="+$("#newCost").val(),  
		     success : function(response) {  
		    	 chargeIngredients();
		     },  
		     error : function(e) {  
		      alert('Error: ' + e);   
		     }  
		    });
}
 
 function sendModify(){
	 var toSend="";
	 $('#ingredientsTable tr').each(function (indexR, value) {
		 if(indexR!=0 && indexR!=1 && indexR!=$('#ingredientsTable tr').length-1){
         $(this).find('td').each(function (index, value) {
        	 if(index==3){
        		 if($(this).children().is(':checked'))
        			toSend+="true;";
        		 else
        			 toSend+="false;";
        	 }else if(index==0){
        		 toSend+=$(this).text()+",";
        	 }else{
        		 toSend+=$(this).children().val()+",";
        	 }
         });
		 }
     });
	    $.ajax({  
		     type : "Post",   
		     url : "modifyIngredients.html",   
		     data : "Data="+toSend,  
		     success : function(response) {  
		    	 chargeIngredients();
		     },  
		     error : function(e) {  
		      alert('Error: ' + e);   
		     }  
		    });
}