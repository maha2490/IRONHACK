
$(document).on("turbolinks:load", function(){

	$('.add_ingredient').on("click", function(event){
		// var theButton = $(event.currentTarget);
		var ingredient_id = $(event.currentTarget).data("ingredient-id");
		var sandwich_id = $('.all_ingredients').data("sandwich-id");
		var data = {ingredient_id: ingredient_id};

		$.ajax({
			type: "POST",
			url: `/api/sandwiches/${sandwich_id}/ingredients/add`,
			data: data,
			success: function (response){
					 console.log(response);
			},
			error: function (error){
				console.log(error);
			}

			// function displayNewIngredient
		});
	});


});

