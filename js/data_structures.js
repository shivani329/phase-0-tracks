var colors = ["blue", "yellow", "aqua purple", "red"];

var names = ["Jon", "ed", "nancy", "black beauty"]

names.push("secretariat");

colors.push("egg shell white");

console.log(colors,names);


var stable = {};

for (var i=0; i<names.length; i++)
{
	stable [names[i]] =colors [i];

}

console.log(stable);

function Car (make, model, year, color, isUsed) {
	this.make=make;
	this.model=model;
	this.year=year;
	this.color=color;
	this.isUsed=isUsed;
	this.describe= function() 
	{ 
		console.log("I am a " + this.isUsed + " " + this.color + " " + this.year + " " + this.make + " " + this.model) 
		console.log("Drive safe!")};
	};

var Ruby = new Car ("Lexus", "RX350", "2009", "red", "previously owned");
Ruby.describe()

var Barney = new Car ("Chrysler", "PT Cruiser", "2001", "purple", "previously owned");
Barney.describe()



