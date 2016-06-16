//ways to create a variable
//option 1
var city; 
city = "Madrid";
console.log("Madrid");

//option 2
var country = "Spain";
console.log(country);
//multiple variables at the same time
var aVariable = 1,
    anotherOne = 2,
    andAnother = 3
//or
var i = 90, x = 20;
//assign different types of values to the same variable
var number = 1;
number = { real: 5, imaginary: 2 };
number = "Hello world!";

//changing a var value easy as
country = "United States"; 
console.log(country);

//using an operator to add a string
country = country + " of America";
console.log(country);
//data assignments 
var a, b, c = 5;
a = "Hello mister!"; //a changed to include string
a = b = c; //now all are again === 5

//data types in JS
Boolean: true and false.
Number: 1.0, 2.7, 10, .5, 7.34e-2, 077, 0xAB
String: "hello world!", 'hi again!'.
Object: {name: 'Conan', str: 50}, ['sword', 'helmet'], null.
Function: function (a, b) { return a + b; }.
undefined: undefined
//typeof operator tells us what kind of data something is
typeof true; //returns "boolean"

//Special characters in a string  such as tabs, new lines and quotes. If you need some of these characters use:
//   \n for new lines
//   \t for a tab
//   \' for a single quote
//   \" for a double quote
//   \\ for a back slash

//loops
//makes an empty variable, then runs a mathematical equation
var x;

for (x = 1;  x <= 42;  x = x + 1) {
    console.log(x);
}