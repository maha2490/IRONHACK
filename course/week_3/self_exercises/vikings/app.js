//app.js


"use strict";
 var Viking = require("./lib/viking.js");
 var Pit = require("./lib/pit.js");



//		vikings
//--------------------------------------------------------------//
var thor = new Viking("Thor", 100, 10);
var svanhild = new Viking( "Svanhild", 85, 9);
var gunnvor = new Viking( "Gunnvor", 72, 8);
var freydis = new Viking("Freydis", 80, 5);
var arrayOfVikings = [thor,svanhild,gunnvor,freydis];


//		pit fights
//--------------------------------------------------------------//
var asgard = new Pit();


asgard.chooseTwoVikings(arrayOfVikings);


function startFight(viking1, viking2){
	//fight no more than 4 times
	for (var round = 0; round <= 4; round++) {	
		if (viking1.health >= 1 && viking2.health >= 1){
		 		viking1.health - viking2.strength;
		 		viking2.health - viking1.strength;
		} else
		 	console.log("The Pit Fight is over between " + viking1.name + "and " + viking2.name
		 		+ ". Choose another viking for batlle.");
	 	}
}

startFight(gunnvor, freydis);


