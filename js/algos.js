// Release 0

// write a function that takes an array of words/arr and returns the longest 
// word or phrase in the array
// use .length to determine the length each word/phrase in the array
// iterate through array to check length of each element, then the next and so on 
// until the end of the array, then return the longest one 

function longestPhrase(arr)

{
	var strings = arr;
	longest = "";
	for (var i=0; i<arr.length; i++)
	{
		if (strings[i].length>longest.length)
		{
			longest=strings[i];
		}
	}
	return longest;
}

// Release 1

// write a function that takes two objects and checks to see if the objects share at least one key-value pair
// group functions at top and test on bottom
// if one thing is the same value, return true
// if neither match, return false
function keyValue(key1, key2) {

		for (var x in key1) {
			for (var y in key2) {
				if (y === x) {
					if (key1[x] === key2[x]) {
						console.log(x + ' is a common factor');
					}
				}
			}
		}
}


// Release 2

// write a function that takes an integer for length and builds and returns an array of 
// strings of the given length 
// run a function with argument of 3 and return 3 random words 
// words should be of variying length with minimum of 1 letter/maximum of 10 (look this up)
// driver code should do this 10 times: generate array, print array, feed array to release0 function
// and print the result 

function randomData(x) 
{
	var data = [];
	for (var i = 0; i < x; i++) {
			var words = "";
			var alphabet = "abcdefghijklmnopqrstuvwxyz0123456789";
	
	for (var j=0; j < Math.floor(Math.random()*10); j++) {
		words += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
	}

		data.push(words);
	}

	return data;

}


var key1 = {
	color: 'grey',
	breed: 'cat'
};

var key2 = {
	color: 'black',
	breed: 'cat'
};

var longest = ["peanut butter and jelly", "cats are cute", "red bull is good", "jetskiing is fun"];

keyValue(key1, key2);


//driver code 

console.log(randomData(10));

//driver code 


console.log(longestPhrase(longest));