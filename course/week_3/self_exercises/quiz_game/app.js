//app.js

"use strict";

var read = require("read");
var Question = require("./lib/question.js");
var Quiz = require("./lib/quiz.js");

//		questions
//--------------------------------------------------------------//

var q1 = new Question("What...is your name?", "King Aurthur of the Britans", 1, 10);
var q2 = new Question("What...is your quest?", "to seek the holy grail", 2, 18);
var q3 = new Question("What...is your favorite color?", "pink", 3, 7);
var q4 = new Question("What...is the capital of Assyria?", "I don't know", 4, 5);
var q5 = new Question("What...is the airspeed velocity of an unladen swallow?", "African or European?", 5, 275);

var quizQuestions =[ q1, q2, q3, q4, q5];


//		quiz game
//--------------------------------------------------------------//

var round1 = new Quiz(quizQuestions);

console.log("STOP! He who would cross the Bridge of Death must answer me these questions, ere the other side he see.");

round1.beginQuiz(quizQuestions);
