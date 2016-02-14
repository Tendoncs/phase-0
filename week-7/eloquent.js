// Eloquent JavaScript

// Did you learn anything new about JavaScript or programming in general?
// nothing really. But it was cool to see the diffrent ways to express 0 = 0 and 1 = 1 does 0 = 0?
// Are there any concepts you feel uncomfortable with?
// No but I will need to read more. I used java script before. it was a long time ago.

// same.
// 1)= sets
// 2) == compares

// in javascript you have to declare the variable type.
// the numbers are diffrent there is not two types of numbers in JS like in ruby.

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.


What is an expression?
 code that produces a value is called an expression
What is the purpose of semicolons in JavaScript? Are they always required?
 they temimate a expression or end most lines. They are not allways needed.
What causes a variable to return undefined?
  when you defined the variable and do not define a value. when you call it it will return ndefined.

Write your own variable and do something to it in the eloquent.js file.

var amount = 10;
amount = amount + 10;
console.log(amount); // 20


What does console.log do and when would you use it? What Ruby method(s) is this similar to?
  it is a reserved name that writes to the browser console. puts is close to the same.

Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

var favoritNumber = Number(prompt("What is your favorit number", ""));
console.log(favoritNumber + "Hey! That's my favorite too!");


Describe while and for loops
What other similarities or differences between Ruby and JavaScript did you notice in this section?
Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.

they are about the same. the syntax is changed a little but they are the same idea. One nice thing about the for loop is there is a short hand version. It is also nice in JS you can declare var inside the expression itself.

var number = 0;
while (number <= 12) {
  console.log(number);
  number = number + 2;
}


for (var number = 0)
  console.log(number);

They are the same concept.



What other similarities or differences between Ruby and JavaScript did you notice in this section?
A lot of is the same stuff. there is just a lot of syntax changes you have to remember. most of the logic is the same from language to language.

Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var string_temo = " # # # #/\n/ # # # #/\n/# # # #/\n/ # # # #/\n/# # # #/\n/ # # # #/\n/# # # #/\n/ # # # #/\n/"

console.log(string_temo);



// Functions


What are the differences between local and global variables in JavaScript?
Local are declared inside the function they are created each time it is called. global are accessed from the main code outside the functions and they are only created once. They can be cleared and recreated but that is not the point.

When should you use functions?
any code you may need to repeate more then once.

What is a function declaration?
you declare the Function as a variable and set it = function() {}

Complete the minimum exercise in the eloquent.js file.
// Complete the `minimum` exercise.

//1st
var min = function(a,b){
  var min_num = 0;
  if (a > b) {
      min_num = a;
  } else {
      min_num = b;
  }
  return min_num;
}
//refactor
var min = function(a,b){
  var min_num = [a,b];
  return min.num.min;
}
// Data Structures: Objects and Arrays

What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]

dot notation is cleaner you read while bracket allows you to access properties with sepcal charaters.

Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.


var me = {firstName:"Alex", lastName:"Williams", age:32, foods:['pizza', 'nacos', 'popcorn'] ,quirt:"Pick up stuff with my feet"};


What is a JavaScript object with a name and value property similar to in Ruby?
setter and getters. Attr.




// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.


var me = {firstName:"Alex", lastName:"Williams", age:32, foods:['pizza', 'nacos', 'popcorn'] ,quirt:"Pick up stuff with my feet"};



//

