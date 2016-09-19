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




//driver code for release 0

var longest = ["peanut butter and jelly", "cats are cute", "red bull is good", "jetskiing is fun"];

console.log(longestPhrase(longest))

