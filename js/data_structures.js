// Release 1
var names = ["prancy", "bob", "charlie", "squirt"];
var colors = ["blue", "purple", "red", "green"];

console.log(names);
console.log(colors);

names.push("jim");
colors.push("orange");

console.log(names);
console.log(colors);

for (var i = 0; i < names.length; i++) {
  console.log(names[i] + ": " + colors[i]);
}

// Release 2

function Car(model, year, color) {
  console.log("Drive this car", this);
  this.model = model;
  this.year = year;
  this.color = color;
}

var newCar = new Car("Honda", 2004, "red");
console.log(newCar);
console.log("Your car is " + newCar.model + ".")
console.log("The year of your car is " + newCar.year + ".")
console.log("Your car's color is " + newCar.color + ".")

var anotherCar = new Car("Subaru", 2002, "white");
console.log(anotherCar);
console.log("Your car is " + anotherCar.model + ".")
console.log("The year of your car is " + anotherCar.year + ".")
console.log("Your car's color is " + anotherCar.color + ".")

var anotherNewCar = new Car("BMW", 2007, "black");
console.log(anotherNewCar);
console.log("Your car is " + anotherNewCar.model + ".")
console.log("The year of your car is " + anotherNewCar.year + ".")
console.log("Your car's color is " + anotherNewCar.color + ".")

var car = {
  model: 'Mercedes',
  'year': 2008,
  snow: true, 
    weather: function() { 
      if (this.snow) {
        console.log("Put chains on tires.");
      } else {
        console.log("Good to go!");
      }
    }
};


car.snow = false;
car.weather();
  
// Release 3

// 1. You can use a for loop to loop through each index for the keys and values.
// 2. Getting input seems straightforward but manipulating that input doesn't seem to be possible within the constructor function. 
//It has to be done outside of the function and can be repetitive.










