// Release 0

function longestPhrase(arrayOfStrings) {
	// Pseudocode:
 	// This function will return the longest phrase
 	// If two phrases are identical length,
 	// it'll return only the first.
 	// Declare string var called longestSoFar, initialize to ""
 	var longestWord = "";

  	for (var i = 0; i < arrayOfStrings.length; i++) {
  		// check for anything longer than longestYet,
 		if (arrayOfStrings[i].length > longestWord.length) {
		  	// if so then push it into longestYet
		  	 longestWord = arrayOfStrings[i];
 		}
  	}
 	// At the end, return longestYet
 	return longestWord;
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
	return returnValue;
    }
}

// Release 2
function generateRandomness(howMany) {
	// Takes the argument howMany, loops it that many times, each loop generates
	// a word filled with random letters.
	// Declare empty array randomWords
	var randomness = [];
	// Declare var Alphabet of "abcdefghijklmnopqrstuvwxyz"
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	for (var w = 0; w < howMany; w++) {

	  //   Declare an empty variable equal to thisWord
	  var thisWord = "";
	  //   Declare a variable and set it equal to wordLength, 
	  //   which is a random number from 1 thru 10
	  var wordLength = Math.floor((Math.random() * 10) + 1);
	   console.log("Word length is " + wordLength);

	  for (var c = 0; c < wordLength; c++) {
	    var theIndex = (Math.floor((Math.random() * 26) + 1) - 1);
	    thisWord = thisWord + alphabet.charAt(theIndex);
	    }

	  //   Add thisWord to randomWords
	  randomness.push(thisWord);
	}

	// When done with that, return randomWords
	return randomness;
}




// Release 0 driver code:
var testArray = ["long phrase","longest phrases","longer phrase"];
console.log("Test array: " + testArray);
console.log("The longest phrase is: " + longestPhrase(testArray));

// Release one driver code:
person1 = {name: "Becky", age: 29, faveColor: "blue"};
person2 = {name: "Elisa", age: 30, faveColor: "green"};

// Release 2 test code:

// Set up for loop to run through 10 times.
for (var i = 0; i < 10; i++) {

	// Print one line of whitespace before each group
	console.log("");

	// Generate & print the 5 random words
	var myWords = generateRandomness(5);
	console.log("For these 5 words: " + myWords);

	// Find & print the longest one of those 5
	var myLongest = longestPhrase(myWords);
	console.log("the longest one is: " + myLongest);
}
console.log("");