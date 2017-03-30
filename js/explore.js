/*

Remember that you can add strings in JavaScript, so '' + 'a' 
would result in the string 'a'. Take your time. This is the 
most valuable skill in programming: being able to think 
through a problem logically.

pseudo:
take string and reverse it so that "hello" becomes "olleh"
  assign string data to variable
  split up string into individual characters
  convert string to array (use .each? .split?)
    - delete each letter in array,
    - add each letter in array to end of array?
  turn array back ito string
  log result in console

1. write function that takes string as a parameter
2. split "hello" into "h", "e", "l", "l", "o"
3. do something to reverse letters => can we use reverse on array?
  a. otherwise, find another way to reverse letters
  b. do we have to add chars together? => '' + 'a' ??
4. turn array back into string
5. call function with "hello" as argument

essence:
"hello" => ["h", "e", "l", "l", "o"] => ["o", "l", "l", "e", "h"] => "olleh"

*/

function reverseString(str) {
    var splitString = str.split(''); // w/o quotes, returns 'e,y,b,d,o,o,g'
    var reverseArray = splitString.reverse(''); // w/o quotes, returns 'eybdoog'
    var joinArray = reverseArray.join(''); // w/o quotes, returns 'e,y,b,d,o,o,g'
    return joinArray; 
}

// DRIVER CODE

var reverse = reverseString('goodbye')

reverse 

