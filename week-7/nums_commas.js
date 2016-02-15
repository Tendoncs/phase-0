// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

//   number.reverse
//   array = number.split by 3
//   String = ""

//   Loop array for each
//   string += loop
//   string += ,
//   end

//   remove last ,
//   reverse

//   return string


// Initial Solution

/*
var separateComma = function(num) {

  //convert number to string
  var tempString = num.toString();
  //convert string to array and backwards
  var tempArray = tempString.split("").reverse();
  // start new array
  var newArray = [];

  // for loop through array
  for (var i = tempArray.length; i > 0; i--) {
    if ((i % 3 === 0) && (i != tempArray.length)) {
      newArray.push(",");
    }
  newArray.push(tempArray[i-1]);
  }

  var newString = newArray.join("");
  return newString;
}

separateComma(1569743) == "1,569,743"
*/

// Refactored Solution

var separateComma = function(num) {

  //convert number to reverse array
  var tempArray = num.toString().split("").reverse();
  var newArray = [];

  //add comma logic: add extra array point every 3 places.
  for (var i = tempArray.length; i > 0; i--) {
    //logic check: every 3rd place and not last place.
    if ((i % 3 === 0) && (i != tempArray.length)) {
      newArray.push(",");
    }
  newArray.push(tempArray[i-1]);
  }

  //join array into string
  var newString = newArray.join("");
  console.log(newString);
  return newString;
};

separateComma(1569743);

// Your Own Tests (OPTIONAL)

separateComma(154369743);
separateComma(1523469743);
separateComma(15235569743);



// Reflection


//Question: What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//Answer: we Pseudocoded it like it was ruby then worked from there
//Question: What did you learn about iterating over arrays in JavaScript?
//Answer: nothing really. it is a lot like c#
//Question: What was different about solving this problem in JavaScript?
//Answer: There are not the same things avaliable to you. like .reverse only works with arrays.
//Question: What built-in methods did you find to incorporate in your refactored solution?
//Answer: we could have used replace but that was not allowed. so our refactored solution looked a lot
// like the first one but just combine some steps.