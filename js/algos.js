// RELEASE 0: LONGEST PHRASE

// Declare function called "longestPhrase" that takes an array of words or phrases.
// Set placeholder for longest phrase
// Declare variable for longest word, set tp 0.
// Set FOR loop: 
	// If the length of the current word is longer than the length of the longest word,
	// set current word to longest word in array
	// Return longest word

function longestPhrase(phrase_array) {
	var longestPhrase = "";
	var longestLength = 0;
	for (var i = 0; i < phrase_array.length; i++) {
		if (phrase_array[i].length > longestLength) {
			longestPhrase = phrase_array[i];
			longestLength = longestPhrase.length;
		}
	}
	return longestPhrase
}

// DRIVER CODE

// phrases = ["diamond in the rough", "blood from a stone", "the devil makes three"]
// console.log(longestPhrase(phrases))


// RELEASE 1: KEY-VALUE MATCH

// Write function that takes two objects as arguments
// Matching should default to false
// Write for loop:
	// Compare object1's hash key to object2's key,
		// if they are equal to each other,
			// then matching is set to true.
// Test for key matches AND value matches.

function pairMatcher(object1, object2) {
matching = false;
	for(var key in object1) {
		if (object1[key] === object2[key]) {
			matching = true;
		}
	}
	return matching;
}

object1 = {name: "Steven", age: 54};
object2 = {name: "Tamir", age: 54};
object3 = {name: "Johanna", age: 24};
object4 = {name: "Caitlin", age: 29};
object5 = {name: "Caitlin", age: 26};


// DRIVER CODE

console.log(pairMatcher(object1, object2))
console.log(pairMatcher(object3, object1))
console.log(pairMatcher(object4,object5))