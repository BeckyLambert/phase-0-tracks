function AddBlackBorder(event) {
	event.target.style.border = "2px solid black";
}

var photo = document.getElementById("google-logo1");
photo.addEventListener("click", AddBlackBorder);

var elements = document.getElementsByClassName("image");
var element = elements[1];
element.style.border = "2px solid pink"