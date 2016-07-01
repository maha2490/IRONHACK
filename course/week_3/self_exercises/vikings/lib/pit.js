//pit.js

"use strict";

class Pit {
	// constructor(anArray){		<--	not needed here?
	// 	this.anArray = anArray;		<--
	// }

	chooseTwoVikings (anArray){
		var chosenViking1 = anArray[Math.floor(Math.random() * anArray.length)];
		var chosenViking2 = anArray[Math.floor(Math.random() * anArray.length)];
			while (chosenViking2 === chosenViking1){
				chosenViking2 = anArray[Math.floor(Math.random() * anArray.length)];
			}
			console.log(chosenViking1);
			console.log(chosenViking2);
	}

 }

 module.exports = Pit;


