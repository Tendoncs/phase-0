 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:
// Goals:
// Characters:
// Objects:
// Functions:

// Pseudocode
//
// Create at least 2 objects with properties
// Create at least 2 functions that interact with those objects by adding or modifying the object's properties
// Call each function (invoke the function) Make sure the output is actually what you expect!

// good guy has pots
// bad guys
// Attack or heal.
// game loop
// start game loop as for your name and the bad guys name
// change the objects
// loop through and either attack or heal until you or the bad guy are dead.
// attacks are random 1-5
//

// Initial Code




// const readline = require('readline');


// var player = {
//   name: "Hero",
//   Health: 100,
//   attack: 6
// };

// var badGuy= {
//   name: "Bad Guy",
//   Health: 100,
//   attack: 5,
// }

// var damage = function(attackStrength){
// return Math.floor(Math.random() * (attackStrength*2) + 1);
// }


// var combat = function(){

// while (player.Health > 0 && badGuy.Health > 0)
// {

// playerDamage = damage(player.attack)
// badGuyDamage = damage(badGuy.attack)

// console.log("You attack and do " +  playerDamage + " damage to Bad Guy.")
// badGuy.Health = badGuy.Health - playerDamage


// console.log("You are hit for " +  badGuyDamage + " damage from the Bad Guy.")
// player.Health = player.Health - badGuyDamage

// console.log("you have " + player.Health + " health left and the Bad guy has " + badGuy.Health + " Health left")

// if (badGuy.Health <= 0){
// console.log("You WIN!")

// }
// else if (player.Health <= 0){

// console.log("You died!")

// }

// };

// }

// combat();

// console.log("What would you like your hero to be called?")





// Refactored Code


var player = {
  name: "Hero",
  Health: 100,
  attack: 6
};

var badGuy= {
  name: "Bad Guy",
  Health: 100,
  attack: 5,
}

var damage = function(attackStrength){
return Math.floor(Math.random() * (attackStrength*2) + 1);
}


var combat = function(){

while (player.Health > 0 && badGuy.Health > 0)
{

playerDamage = damage(player.attack)
badGuyDamage = damage(badGuy.attack)

console.log("You attack and do " +  playerDamage + " damage to Bad Guy.")
badGuy.Health = badGuy.Health - playerDamage


console.log("You are hit for " +  badGuyDamage + " damage from the Bad Guy.")
player.Health = player.Health - badGuyDamage

console.log("you have " + player.Health + " health left and the Bad guy has " + badGuy.Health + " Health left")

if (badGuy.Health <= 0){
console.log("You WIN!")
}
else if (player.Health <= 0){
console.log("You died!")
}

};

}

combat();



// Reflection
// What was the most difficult part of this challenge?
// I tried to get user input. that was really hard with javascript I had to give up on that

// What did you learn about creating objects and functions that interact with one another?
// It was good practic.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I did not find any I just cleaned up the code a little.

// How can you access and manipulate properties of objects?
// It was easy you just access it from object.properties. I have worked with json before so it was about the same.

//
//
//
//
//
//
//