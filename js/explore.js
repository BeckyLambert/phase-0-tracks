// Function that takes a string and reverses it.
function reverse(input) {
	// reversed variable set empty will contain reversed input
	var reversed = "";
	// for loop to count backwards
	for (var i = input.length - 1; i >= 0; i--) {
		// adds to the reversed variable
		reversed = reversed + input[i];
	}
    // returns input when done
	return reversed;
}

// tessting the function
var testString = "hello";
var reversedString = reverse(testString);
// prints "olleh"
var time = true;
var money = true;
if (time == money) {
	console.log(reversedString);

} else {
	// do nothing
	
}