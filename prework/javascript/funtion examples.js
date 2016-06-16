//FUNCTIONS

//set up with 2 parameters, creates an empty variable, and has string returned when function is run.
function essentials (thing1, thing2) {
	var claim;
	claim = "Can't live without " + thing1 + " and " + thing2 + "!";
	return claim
}
//creates a second empty variable, sets it to the function + it's two parameters. changes input by restating variable.
var message; 
message = essentials("mascara", "lipstick");
console.log(message);
message = essentials("Sephora", "PIZZA");
console.log(message);