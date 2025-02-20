//Function to convert celcius to fahrenheit
function cToF(celsius) {
  // this is the formula to convert celsius to fahrenheit
  // celsius * 9/5 then add 32
  // return the result
  return (celsius * 9) / 5 + 32;
}

//Driver code
let celsius = 37;
let result = cToF(celsius);
console.log(`The temperature in Fahrenheit is: ${result} degrees`);
//Output: The temperature in Fahrenheit is: 98.6 degrees