// app.js


//________________EVENT _______________________________________________________________________

$(document).ready(function(){

	$(".js_song_form").on("submit", fetchSongInfo);    // form

});


//________________FETCH SONG ___________________________________________________________________

function fetchSongInfo (event) {
  event.preventDefault();

  var searchTerm = $('.js_song_input').val();    	   // form INPUT
  

  $.ajax({
    type: "GET",
                                    //  Query string parameters
                                    //      key   value
    								//       |     | 
    url: "https://api.spotify.com/v1/search?type=track&query=" + searchTerm,
                                //         |          |
                                //    Indicated by ?  -------------- Multiple values separated by &
    success: showInfo,
    error: handleError
  });

  $('.js_song_input').val("");
}

function showInfo(songResponse){
  $(".js_title").empty();
  $(".js_name").empty();
  $(".js_image").empty();

  console.log(songResponse);

  var title = songResponse.tracks.items[0].artists[0].name;
  var artist_name = songResponse.tracks.items[0].name;
  var image = ` <img src="${songResponse.tracks.items[0].album.images[0].url}"> `;


  $(".js_title").html(title);
  $(".js_name").html(artist_name);
  $(".js_image").html(image);
}




//________________ERROR________________________________________________________________________

function handleError (error) {
  console.log("Time to de-bug!");
  console.log(error.responseText);
}