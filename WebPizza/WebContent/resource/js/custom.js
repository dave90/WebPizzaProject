/* Bootstrap Carousel */

$('.carousel').carousel({
	interval : 8000,
	pause : "hover"
});

/* Ecommerce single item carousel */

$('.ecarousel').carousel({
	interval : 8000,
	pause : "hover"
});

/* Navigation Menu */

ddlevelsmenu.setup("ddtopmenubar", "topbar");

/* Dropdown Select */

/* Navigation (Select box) */

// Create the dropdown base
$("<select />").appendTo(".navis");

// Create default option "Go to..."

$("<option />", {
	"selected" : "selected",
	"value" : "",
	"text" : "Menu"
}).appendTo(".navis select");

// Populate dropdown with menu items

$(".navi a").each(function() {
	var el = $(this);
	$("<option />", {
		"value" : el.attr("href"),
		"text" : el.text()
	}).appendTo(".navis select");
});

$(".navis select").change(function() {
	window.location = $(this).find("option:selected").val();
});

/* Recent post carousel (CarouFredSel) */

/* Carousel */

$('#carousel_container').carouFredSel({
	responsive : true,
	width : '100%',
	direction : 'right',
	scroll : {
		items : 4,
		delay : 2000,
		duration : 500,
		pauseOnHover : "true"
	},
	prev : {
		button : "#car_prev",
		key : "left"
	},
	next : {
		button : "#car_next",
		key : "right"
	},
	items : {
		visible : {
			min : 1,
			max : 4
		}
	}
});

/* Scroll to Top */

$(".totop").hide();

$(function() {
	$(window).scroll(function() {
		if ($(this).scrollTop() > 300) {
			$('.totop').slideDown();
		} else {
			$('.totop').slideUp();
		}
	});

	$('.totop a').click(function(e) {
		e.preventDefault();
		$('body,html').animate({
			scrollTop : 0
		}, 500);
	});

});

/* Support */

$("#slist a").click(function(e) {
	e.preventDefault();
	$(this).next('p').toggle(200);
});

/* Careers */

$('#myTab a').click(function(e) {
	e.preventDefault()
	$(this).tab('show')
})

/* Countdown */

$(function() {
	launchTime = new Date();
	launchTime.setDate(launchTime.getDate() + 365);
	$("#countdown").countdown({
		until : launchTime,
		format : "dHMS"
	});
});

$(function() {
	var numButtons = $(".count").attr('id');
	for (var i = 0; i < numButtons; ++i) {

		$("#add" + i).click(function() {
			var str = $(this).attr('id');
			var res = str.split("add");
			var currentVal = parseInt($("#qty" + res[1]).val());
			if (!isNaN(currentVal)) {
				$("#qty" + res[1]).val(currentVal + 1);
			}
		});

		$("#minus" + i).click(function() {
			var str = $(this).attr('id');
			var res = str.split("minus");
			var currentVal = parseInt($("#qty" + res[1]).val());
			if (!isNaN(currentVal) && currentVal > 0) {
				$("#qty" + res[1]).val(currentVal - 1);
			}
		});
	}

});

$(function() {
	$("#delivery").click(function() {
		if ($(this).hasClass("deliveryActive")) {
			$(this).removeClass("deliveryActive").addClass("delivery");
		} else
			$(this).removeClass("delivery").addClass("deliveryActive");

		if ($("#carryout").hasClass("carryoutActive")) {
			$("#carryout").removeClass("carryoutActive").addClass("carryout");
		} else
			$("#carryout").removeClass("carryout").addClass("carryoutActive");

	});

	$("#carryout").click(function() {
		if ($(this).hasClass("carryoutActive")) {
			$(this).removeClass("carryoutActive").addClass("carryout");
		} else
			$(this).removeClass("carryout").addClass("carryoutActive");

		if ($("#delivery").hasClass("deliveryActive")) {
			$("#delivery").removeClass("deliveryActive").addClass("delivery");
		} else
			$("#delivery").removeClass("delivery").addClass("deliveryActive");

	});
	
	$("#house").click(function() {
		if ($(this).hasClass("house")) {
			$("#inputLevel").empty();
			$(this).removeClass("house").addClass("houseActive");
		}

		if ($("#apartment").hasClass("apartmentActive")) {
			$("#apartment").removeClass("apartmentActive").addClass("apartment");
		}
		if ($("#business").hasClass("businessActive")) {
			$("#business").removeClass("businessActive").addClass("business");
		}
		if ($("#campus-base").hasClass("campus-baseActive")) {
			$("#campus-base").removeClass("campus-baseActive").addClass("campus-base");
		}
		if ($("#hotel").hasClass("hotelActive")) {
			$("#hotel").removeClass("hotelActive").addClass("hotel");
		}
		if ($("#dormitory").hasClass("dormitoryActive")) {
			$("#dormitory").removeClass("dormitoryActive").addClass("dormitory");
		}
		if ($("#other").hasClass("otherActive")) {
			$("#other").removeClass("otherActive").addClass("other");
		}

	});
	
	$("#apartment").click(function() {
		if ($(this).hasClass("apartment")) {
			$("#inputLevel").html("<label  class='col-md-2 control-label'>Level</label>" +
					"<div class='col-md-4'>" +
					"<textarea class='form-control' rows='1' placeholder='Level' >" +
					"</textarea>" +
					"</div>");
			$(this).removeClass("apartment").addClass("apartmentActive");
		} 
		
		if ($("#house").hasClass("houseActive")) {
			$("#house").removeClass("houseActive").addClass("house");
		}
		if ($("#business").hasClass("businessActive")) {
			$("#business").removeClass("businessActive").addClass("business");
		}
		if ($("#campus-base").hasClass("campus-baseActive")) {
			$("#campus-base").removeClass("campus-baseActive").addClass("campus-base");
		}
		if ($("#hotel").hasClass("hotelActive")) {
			$("#hotel").removeClass("hotelActive").addClass("hotel");
		}
		if ($("#dormitory").hasClass("dormitoryActive")) {
			$("#dormitory").removeClass("dormitoryActive").addClass("dormitory");
		}
		if ($("#other").hasClass("otherActive")) {
			$("#other").removeClass("otherActive").addClass("other");
		}
		
		
	});
	$("#other").click(function() {
		if ($(this).hasClass("other")) {
			$("#inputLevel").empty();
			$(this).removeClass("other").addClass("otherActive");
		} 
		
		if ($("#house").hasClass("houseActive")) {
			$("#house").removeClass("houseActive").addClass("house");
		}
		if ($("#business").hasClass("businessActive")) {
			$("#business").removeClass("businessActive").addClass("business");
		}
		if ($("#campus-base").hasClass("campus-baseActive")) {
			$("#campus-base").removeClass("campus-baseActive").addClass("campus-base");
		}
		if ($("#hotel").hasClass("hotelActive")) {
			$("#hotel").removeClass("hotelActive").addClass("hotel");
		}
		if ($("#dormitory").hasClass("dormitoryActive")) {
			$("#dormitory").removeClass("dormitoryActive").addClass("dormitory");
		}
		if ($("#apartment").hasClass("apartmentActive")) {
			$("#apartment").removeClass("apartmentActive").addClass("apartment");
		}
		
	});
	
//	$("#business").click(function() {
//		if ($(this).hasClass("business")) {
//			$(this).removeClass("business").addClass("businessActive");
//		} 
//		
//		if ($("#house").hasClass("houseActive")) {
//			$("#house").removeClass("houseActive").addClass("house");
//		}
//		if ($("#apartment").hasClass("apartmentActive")) {
//			$("#apartment").removeClass("apartmentActive").addClass("apartment");
//		}
//		if ($("#campus-base").hasClass("campus-baseActive")) {
//			$("#campus-base").removeClass("campus-baseActive").addClass("campus-base");
//		}
//		if ($("#hotel").hasClass("hotelActive")) {
//			$("#hotel").removeClass("hotelActive").addClass("hotel");
//		}
//		if ($("#dormitory").hasClass("dormitoryActive")) {
//			$("#dormitory").removeClass("dormitoryActive").addClass("dormitory");
//		}
//		if ($("#other").hasClass("otherActive")) {
//			$("#other").removeClass("otherActive").addClass("other");
//		}
//		
//	});
//	$("#campus-base").click(function() {
//		if ($(this).hasClass("campus-base")) {
//			$(this).removeClass("campus-base").addClass("campus-baseActive");
//		} 
//		
//		if ($("#house").hasClass("houseActive")) {
//			$("#house").removeClass("houseActive").addClass("house");
//		}
//		if ($("#apartment").hasClass("apartmentActive")) {
//			$("#apartment").removeClass("apartmentActive").addClass("apartment");
//		}
//		if ($("#business").hasClass("businessActive")) {
//			$("#business").removeClass("businessActive").addClass("business");
//		}
//		if ($("#hotel").hasClass("hotelActive")) {
//			$("#hotel").removeClass("hotelActive").addClass("hotel");
//		}
//		if ($("#dormitory").hasClass("dormitoryActive")) {
//			$("#dormitory").removeClass("dormitoryActive").addClass("dormitory");
//		}
//		if ($("#other").hasClass("otherActive")) {
//			$("#other").removeClass("otherActive").addClass("other");
//		}
//		
//	});
});

/* Ecommerce sidebar */

$(document).ready(function() {
	$('.sidey .nav').navgoco();
});