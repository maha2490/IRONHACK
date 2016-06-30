//app.js


var fs = require("fs");


function epiRundown(array){
		
		array.forEach(function (epi){
			console.log("title: " + epi.title);  
			console.log(epi.description);
			var rate = "";
				for ( i = 1; i <= Math.round(epi.rating); i++) {
					rate += "*"
				}
			console.log("rating: " + epi.rating + rate);
			
		}
	)};	






//named function CALLBACK
function fileActions(err, file){
	if (err) {
		throw err;
	}

	var episodes = JSON.parse(file);
	var filteredEpisodes = episodes.filter(function(epi){
		return epi.rating >= 8.5;
	});

	// var filteredEpisodes = [];				//ANOTHER [LONGER] SOLUTION FOR .FILTER

	// episodes.forEach(function (epi) {
	// 	if (epi.rating >= 8.5) {
	// 		filteredEpisodes.push(epi);
	// 	}
	// });


	var episInOrder = filteredEpisodes.sort(function(epi1, epi2){
	return epi1.episode_number-epi2.episode_number
	});
	epiRundown(episInOrder);
}


fs.readFile("./GoTEpisodes.json", "utf8", fileActions);











