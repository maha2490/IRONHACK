//options example

options = {
    prompt: "What's your name?\n>"  //put question, key/value pair
}
// Our options object, the prompt is simply what will appear in the command line when read is called

read(options, displayName) //cheeck answer
// The prompt itself, passing options, and using our callback function after input

function displayName (err, name //aka input){
	if (err){
		console.log(err);
	}
    console.log("Your name is: " + name)
}
// Outputs whatever the user has entered back to the console
// Can be manipulated by a hash