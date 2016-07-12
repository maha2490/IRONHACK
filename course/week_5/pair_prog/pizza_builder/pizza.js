// ingredient mvmt _________________________________________________________
$(document).ready(function () {

	$('.btn-mushrooms').on('click', function(){
		$('.mushroom').slideToggle(1000) 
	});

	$('.btn-pepperonni').on('click', function(){
		$('.pep').slideToggle(1000)
	});

	$('.btn-green-peppers').on('click', function(){
		$('.green-pepper').slideToggle(1000)
	});

	$('.btn-sauce').click(function(){
		$('.sauce').toggleClass('sauce-white');
	});

	$('.btn-crust').click(function(){
		$('.crust').toggleClass('crust-gluten-free');
	});

	// buttons _____________________________________________________________

	$('.btn-pepperonni').click(function(){
		
		$('.btn-pepperonni').toggleClass('active');
		$('.pep_price').toggle();
	});

	$('.btn-green-peppers').click(function(){
		$('.btn-green-peppers').toggleClass('active');
		$('.gp_price').toggle();	
	});

	$('.btn-mushrooms').click(function(){
		$('.btn-mushrooms').toggleClass('active');
		$('.mush_price').toggle();
		
	});
	$('.btn-sauce').click(function(){
		$('.btn-sauce').toggleClass('active');
		$('.sauce_price').toggle();
		
	});
	$('.btn-crust').click(function(){
		$('.btn-crust').toggleClass('active');
		$('.crust_price').toggle();
		
	});


	// price  _______________________________________________________________

	$('.btn').click(function(){  
		price = 10;
		console.log("bug test");
		if ($('.btn-pepperonni').hasClass("active")){
			price+= 1
		}
		if ($('.btn-green-peppers').hasClass("active")){
			price+= 1
		}
		if ($('.btn-mushrooms').hasClass("active")){
			price+= 1
		}
		if ($('.btn-crust').hasClass("active")){
			price+= 5
		}
		if ($('.btn-sauce').hasClass("active")){
			price+= 3
		} s
		$('strong').html("$" + price);
		});
});


