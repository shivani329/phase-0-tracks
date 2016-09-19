// Release 0

// write a function that takes an array of words/phrases and returns the longest 
// word or phrase in the array
// use .length to determine the length each word/phrase in the array
// iterate through array to check length of each element, then the next and so on 
// until the end of the array, then return the longest one 

function longestPhrase(phrases) {
	var longest = '';

	for (var i = 0; i < phrases.length; i++) {
		if (phrases[i].length > longest.length) {
			longest = phrases[i];
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


//driver code for release 1

var key1 = {
	color: 'grey',
	breed: 'cat'

};

var key2 = {
	color: 'black',
	breed: 'cat'
};

keyValue(key1, key2)



//driver code for release 0

var longest = ["peanut butter and jelly", "cats are cute", "red bull is good", "jetskiing is fun"];

console.log(longestPhrase(longest))

