// Interview Q's

// 1.) spacify()

function spacify(str){
  return str.split('').join(' ');
 
}

// 2.) .spacify()

String.prototype.spacify = function spacify(){
  return this.split('').join(' '); 
};

// 3.) 

String.prototype.spacify = function spacify(){
  return this.split('').join(' '); 
};

console.log("Hello World!".spacify());

/////////////////////////

function speak(line){
  console.log("The", this.adjective, "rabbit says '",line,"'");
}

var blackRabbit = { adjective: "black", speak: speak }
var fatRabbit   = { adjective: "fat"  , speak: speak }

blackRabbit.speak("Oh my ears and whiskers, how late its getting!!")
fatRabbit.speak("I am starving!!")

//  *** SIDE NOTE ***  //
// Apply Method - Use apply to call a function when you do not know how many arguments it has
// return function.apply(null, arguments);

speak.apply(fatRabbit, ["YUMM!!! - From apply"]);

//  *** SIDE NOTE ***  //
// Call Method - Functions also have a call method, which is similar to apply, but you can
// give the arguments for the function separately instead of as an array:

speak.call(fatRabbit, "YUUMM!! - From Call")

//  *** SIDE NOTE ***  //
// Functions also have a call method, which is similar to apply, but you can
// give the arguments for the function separately instead of as an array:

speak.call(fatRabbit, "YUUMM!! - From Call")


// Call and Apply with 2 args

function run(from, to){
  console.log("The", this.adjective, "rabbit ran from", from, "to", to);
}

run.apply(fatRabbit, ["A","B"]);
run.call(fatRabbit, "A","B");

// Constructors //
// Functions used to create new objects.

// Rabbit has constructor function, Using 'new' allows it to point to the
// 'function Rabbit' to create itself 

function Rabbit(adjective){
  this.adjective = adjective;
  this.speak = function speak(line){
    console.log("The", this.adjective, "rabbit says '",line,"'");
  };
}

var killerRabbit   = new Rabbit("killer");
killerRabbit.speak = "ARRRGH!!!"

// makeRabbit also has a constructor function, but it points to 
// Object() when makign itself

function makeRabbit(adjective){
    return {
      adjective: adjective,
      speak: function speak(line){
             console.log("The", this.adjective, "rabbit says '",line,"'");
            }
    }
}

var blackRabbit = makeRabbit("black");

// Every Object is based on a protoType which gives it an inherit 
// set of properties

// Typing {} is equivalent to typing new Object()
// toString is a method that is part of the Object prototype

// The simple objects we have used so far are based on the most 
// basic prototype, which is associated with the Object constructor, 
// and are thus shared by all objects.

// Object prototpye -> Rabbit prototype -> Constructor protoype -> rabbit objects
 
// Every function you create gets a prototype property (name.prototype),
// which holds an object, the 'function prototype'
// This prototype has a constructor property that points back to the 
// function from which it belongs

// The prototype can be used at any time to add new properties 
// and methods to all objects based on it. 


// function declaration
function foo() { return 5; }

// anonymous function expression
var foo = function() { return 5; }

// named function expression
var foo = function foo() { return 5; }


// Function Declaration: Loads before any code is executed.
// If you call a function declaration, it will always work

// Fucntion Expression:  Loads only when the interpreter reaches that
// that line of code. 
// So if you try to call a function expression before it's loaded, 
// you'll get an error

// JavaScript Function level Scope
/*

Can make temporary scope with this fucntion example

(function () {
      var x = 2;
      // some other code
    }());

*/


// Hoisting
// only function names are hoisted, hence why function 
// decalrations are hoisted, and not function expressions

// Closures
// the environment that is created when a function is invoked 



