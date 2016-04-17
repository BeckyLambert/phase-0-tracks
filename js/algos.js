// Release 0

function longest_phrase(arrayOfStrings) {
	// Pseudocode:
 	// This function will return the longest phrase
 	// If two phrases are identical length,
 	// it'll return only the first.
 	// Declare string var called longestSoFar, initialize to ""
 	var longest_word = "";

  	for (var i = 0; i < arrayOfStrings.length; i++) {
  		// check for anything longer than longest_yet,
 		if (arrayOfStrings[i].length > longest_word.length) {
		  	// if so then push it into longest_yet
		  	 longest_word = arrayOfStrings[i];
 		} else {
 			// do nothing
 		}
  	}
 	// At the end, return longest_yet
 	return longest_word;
}


// Release one
function findMatch(person1, person2) {
	// Start off declaring returnValue boolean as false
	var returnValue = false;
	// Declare two objects with the info from these two objects, & compare

	for(var key in person1) {
		var person1val = person1[key];
		console.log("  Person 1 value: " + person1val);
		var person2val = person2[key];
		console.log("  Person 2 value: " + person2val);

		//compare values, if equal set returnValue to true
		if (person1[key] == person2[key]) {
			console.log("");
			console.log("True, " + key + " is " + person1[key] + " for both.");
			 returnValue = true;
		}
	
 
	// At end, return returnValue
	return returnValue
    }
}

// Release 2
function generate_randomness(how_many) {
	// Takes the argument how_many, loops it that many times, each loop generates
	// a word filled with random letters.
	// Declare empty array randomWords
	var randomness = [];
	// Declare var theAlphabet of "abcdefghijklmnopqrstuvwxyz"
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	for (var w = 0; w < how_many; w++) {

	  //   Declare an empty variable equal to this_word
	  var this_word = "";
	  //   Declare a variable and set it equal to wordLength, 
	  //   which is a random number from 1 thru 10
	  var wordLength = Math.floor((Math.random() * 10) + 1);
	   console.log("Word length is " + wordLength);

	  for (var c = 0; c < wordLength; c++) {
	    var theIndex = (Math.floor((Math.random() * 26) + 1) - 1)
	    this_word = this_word + alphabet.charAt(theIndex);
	    }

	  //   Add thisWord to randomWords
	  randomness.push(this_word);
	}

	// When done with all that, return randomWords
	return randomness;
}
// Set up for loop to run through 10 times.
for (var i = 0; i < 10; i++) {

	// Print one line of whitespace before each group
	console.log("");

	// Generate & print the 5 random words
	var my_words = generate_randomness(5);
	console.log("For these 5 words: " + my_words);

	// Find & print the longest one of those 5
	var myLongest = longest_phrase(my_words);
	console.log("the longest one is: " + myLongest);
}
console.log("");


// Release 0 driver code:
var testArray = ["long phrase","longest phrases","longer phrase"];
console.log("Test array: " + testArray)
console.log("The longest phrase is: " + longest_phrase(testArray));

// Release one driver code
person1 = {name: "Becky", age: 29, faveColor: "blue"};
person2 = {name: "Elisa", age: 30, faveColor: "green"};
