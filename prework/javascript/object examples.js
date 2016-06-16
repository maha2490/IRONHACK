//OBJECT EXAMPLES


var country; 
country = { 
	name: "Uruguay",
	continent: "South America",
	capital: "Montevideo"
};
//additional data inside an object besides just integers
var barbarian = { name: 'Conan', strength: 100 };
var superhero = { name: 'Batman', inventory: ['rope', 'batarang', 'darts'] };
var players = [ { name: 'Marc', age: 22 }, { name: 'Sophie', age: 21 } ];

var superhero = { name: 'Batman' }; 
superhero.name = 'Superman'; 
superhero.superpower = 'flight'; //creates new key & inputs value

//both ways to print out the value
console.log( country["name"])  
console.log( country.continent);
//adding "language" & "population"
country["language"] = "Spanish";
country.population = 3324460;
//changing name value
country.name = "Eastern Repulblic";
console.log(country);
//goes through all object keys & prints them out inside of this string framework
for (key in country){
	console.log("This country's " + key + " is " + country[key] + ".");
}
//accessing the data inside an object
var character = { name: 'Conan', str: 100  };
character.str;   //prints 100
character.name;  //prints 'Conan'
superhero.name.length;
superhero.inventory[2].toUpperCase();
//using an index operator
character['name']; //also prints 'Conan'
//index notation with strings
var alumniByCity = {
'Miami': 20,
'New York': 5,
'San Fran': 10
};
var city = prompt('Choose a city (San Fran, New York, Miami) to see the amount of alumni there.');
var alumniCount = alumniByCity[city]; //directing to object and [data] point inside
alert(city + ' has ' + alumniCount + 'alumni!');
//more index notation
var alumniByCity = {
  'Miami': 20,
  'New York': 5,
  'San Francisco': 10
};
var city = prompt('Choose a city (San Francisco, New York, Miami) to see the amount of alumni there.');
var alumniCount = alumniByCity[city]; //setting var to the value of alumniByCity[city] to be specified
alert(city + ' has ' + alumniCount + ' alumni!'); //key + has + [new var created in line above] + alumni

//ARRAY EXAMPLES

var petsAtTheZoo;
petsAtTheZoo = ["lions", "gorillas", "monkeys"];
var mixed = [ 12345, 6549, 'ZNN009', { value: 'an object!' } ];
var coordinates = [ [0, 0], [1, 2], [3, 4], [5, 6] ];

//prints out array
console.log(petsAtTheZoo);
//prints out item at given index in string
console.log("the most popular are " + petsAtTheZoo[1] + " ! ");
//going over each item of the array. not length in terms of letters. x = x + 1 gets us to the next item.
for (x = 0; x < petsAtTheZoo.length; x = x + 1) {
	console.log(petsAtTheZoo[x]);
}
//adds items to the array
petsAtTheZoo.push("tucans");
petsAtTheZoo.push("cougars");
//creating a blank array & adding items to it
var transportation;
transportation = [];
transportation.push("car", "jet", "train", "bike");
console.log(transportation);
//accessing data in an array
var inventory = [];
inventory.push('rope'); //index 0
inventory.push('batarang'); //index 1
inventory.push('darts'); // index 2
inventory[1]; // will print 'batarang' as it is index[1]

