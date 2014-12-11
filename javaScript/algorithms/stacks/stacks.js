// Stacks
/* 
- Very fast
- Good for evaluating expression and function calls
*/

function Stack(){
  this.dataStore = [];
  this.top    = 0;
  this.peek   = peek;
  this.push   = push;
  this.pop    = pop;
  this.clear  = clear;
  this.length = length;
}

// this.top executes the = element first, at 0, then ++ itslef to 1
function push(element){
  this.dataStore[this.top++] = element;
}

// this.this decrements itself from top=3, to top=2(last index)
// before returning the last (index at 2) item in array.
// decrementing top, reduces the array length..
function pop(){
  return this.dataStore[--this.top];
}

function peek(){
  return this.dataStore[this.top-1];
}

function length(){
  return this.top;
}

function clear(){
  this.top = 0;
}

var s = new Stack(); 
s.push("David"); 
s.push("Raymond");
s.push("Bryan");

// console.log(s);
// console.log(s.pop());
// console.log(s);
// console.log(s.pop());
// console.log(s);
// console.log(s.pop());

// Palendrome - compare original string to reverse string
// get reverse string by creating stack and popping off
// into a reverse stirng..

// function isPalendrome(word){
//   if(word == null){
//     return null;
//   }
//    rword = ""
//    var s = new Stack();

//   for(var i=0; i < word.length; ++i){
//     s.push(word[i])
//   }

//   while(s.length() > 0 ){
//       rword += s.pop();
//   }

//   if(word == rword){
//     return true;
//   }
//   else{
//     return false;
//   }
// }


function isPalindrome(word) {
var s = new Stack();
for (var i = 0; i < word.length; ++i) {
      s.push(word[i]);
   }
  var rword = "";
  while (s.length() > 0) {
      rword += s.pop();
   }
  if (word == rword) { 
    return true;
  } else {
    return false; 
  }
}


// console.log(isPalindrome("racecar"));

function factorial(number){
  if(number === 0){
    return 1;
  }

  return number * factorial(number-1);
}

// console.log(factorial(5));


function fact(number){
  s = new Stack();
  
  while(number > 1){
    s.push(number--);
  }

  product = 1
  while(s.length() > 0){
    product = product * s.pop()
  }
  return product;
}

console.log(fact(5));

