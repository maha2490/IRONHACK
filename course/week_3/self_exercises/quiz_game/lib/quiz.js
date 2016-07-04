//quiz.js

"use strict";
var read = require("read");

class Quiz{
	constructor(array){
		this.array = array;
		this.counter = 0;
		this.pointCounter = 0; 
	}

	beginQuiz(){
		if (this.counter === this.array.length){
			console.log("The game is SO over.")
		}else{
			var	options = {
	    			prompt: (this.array[this.counter].questionText) 
				}
				read(options, this.testAnswer.bind(this))		
			}
		}
	testAnswer(err, userResponse){
		if (err){
			throw err.message;
			}
		else if (userResponse === this.array[this.counter].answer){
			console.log("Right, off you go.");
			this.counter ++;
			this.pointCounter += this.array[this.counter].pointValue;
			console.log("You have " + this.pointcounter + " points.");
			this.beginQuiz();       //if method is inside another, needs .this before to work
		}else{
			console.log("You shall not cross!");
			this.pointCounter -= this.array[this.counter].pointValue;
			console.log("You have " + this.pointcounter + " points.");
			this.beginQuiz();
		}
	}
}

module.exports = Quiz;
