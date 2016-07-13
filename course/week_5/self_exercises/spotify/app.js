// app.js

$(document).ready (function () {
	$(".js_artist_search_form").on("submit", findArtist);
	
});

//_______ARTIST SEARCH___________________________________________________

	function findArtist(response){
		event.preventDefault();

		var searchedArtist = $('.js_artist_name').val();
		
		$.ajax({
			type: "GET",
			url: "https://api.spotify.com/v1/search?type=artist&query=" + searchedArtist,
			success: displayResults, 
			error: handleError
		})


		function displayResults(results){
			var searchResults = 
			`<p>Below are the findings of your search</p>
				<div> 
					${results.artists.items[0].name}
				</div>
				<img src="${results.artists.items[0].images[0].url}" data-id="results.artists.items[0].id" alt="maroon5" height="350" width="500">
			`
			$('.js_results').append(searchResults)
		//_______Album SEARCH___________________________________________________

		};







		function handleError(error){
			console.log("Oh no! There was an error.");
		    console.log(error.responseText);
		}

	} // end of findArtist





	