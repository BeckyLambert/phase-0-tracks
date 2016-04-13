function reverse(input) {
	var reversed = "";
	for (var i = input.length - 1; i >= 0; i--) {
		reversed = reversed + input[i];
	}

	return reversed;
}


var testString = "hello";
var reversedString = reverse(testString);

var time = true;
var money = true;
if (time == money) {
	console.log(reversedString);

} else {
	
}