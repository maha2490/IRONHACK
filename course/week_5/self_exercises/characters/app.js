// app.js

$(document).ready(function () {

$('.disp_char').on('click', function(){ // attaching button click to getCharacters function
  	getCharacters();
  });
 
$(".js-character-form").on("submit", createCharacter);

});

//_______CREATING CHARACTERS___________________________________________________

	function createCharacter (event){
		event.preventDefault();   // lets us stay on same page, which is not default

	 	var newCharacter = {
		    name: $('.form_name').val(), // takes whatever was input(aka value) into specifi form class
		    occupation: $('.form_occupation').val(),
		    weapon: $('.form_weapon').val()
		};

		$.ajax({
		  	type: "POST",
		  	url: "https://ironhack-characters.herokuapp.com/characters",
		  	data: newCharacter,   // object, hash here
			success: updateList,  // function
			error: handleError    // function
		}); 

		function updateList() { 
			var newListItem =
				`<p> 
					${newCharacter.name} - 
			        <strong> ${newCharacter.weapon} </strong> -
			        <em> ${newCharacter.occupation} </em> -
			        <em> ${newCharacter.debt} </em>
			    </p>`
			 
			    $('.char_list').append(newListItem)
			};
		}

		function handleError (error) {
		    console.log("Oh no! There was an error.");
		    console.log(error.responseText);
		}


//_______DISPLAYING CHARACTERS___________________________________________________
  

	  function getCharacters(){
		  $.ajax({
		  	type: "GET",
		  	url: "https://ironhack-characters.herokuapp.com/characters",
		  	success: function(response){  // AJAX, JQuery pre-set up to work this way, taking URL result into success or error
		  		console.log("Success!");
		  		showCharacters(response);
		  	}, 
		  	error: function(error){
			  	console.log("Error!");
			  	console.log(error.responsetext); // responsetext is built in as well
		  	}
		  });  
	  }

	   function showCharacters (charactersArray) {
	      $('.char_list').empty(); // want to clear out the list before adding characters

	      charactersArray.forEach(function (theCharacter){
	        var newListItem = 
			` <li> 
				${theCharacter.name} - 
		        <strong> ${theCharacter.weapon} </strong> -
		        <em> ${theCharacter.occupation} </em> -
		        <em> ${theCharacter.debt} </em>
	        </li> `
	 
	        $('.char_list').append(newListItem)
	        });
	    }
