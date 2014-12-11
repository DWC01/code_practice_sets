// Queues

function Queue(){
  this.dataStore = []
  this.enqueue   = enqueue;
  this.dequeue   = dequeue;
  this.front     = front;
  this.back      = back;
  this.toString  = toString;
  this.empty     = empty;
}

function enqueue(element){
  this.dataStore.push(element);
}

function dequeue(){
  return this.dataStore.shift();
}

function front(element){
  return this.dataStore[0];
}

function back(){
  return this.dataStore[this.dataStore.length-1];
}

function toString(){
  str = ""
  for(var i = 0; i < this.dataStore.length; ++i){
    str += this.dataStore[i] + "\n";
  }
  return str;
}

function empty(){
  if(this.dataStore.length == 0) {
    return true;
  }
  else {
    return false;
  }
}

// var q = new Queue();
// q.enqueue("Meredith");
// q.enqueue("Cynthia");
// q.enqueue("Jennifer");


// console.log(q.toString());
// console.log("Front of queue: " + q.front());
// console.log("Back of queue: " + q.back());


// NOTE: Program threw error at read("dancers.txt"), did not try to fix
// function dancers(sex, name) {
//   this.sex  = sex;
//   this.name = name;
// }


// function getDancers(male, female) {
//   var names = read("dancers.txt").split("\n");

//   for(var i=0; 1<names.length;++i){
//     names[i] = names[i].trim();
//   }

//   for(var i=0; 1<name.length; ++i) {
//     names[i] = names[i].split(" ");
//     sex  = names[i][0];
//     name = names[i][1];

//     if(sex == "F"){
//       femaleDancers.enqueue(new Dancer(sex, name));
//     }
//     else{
//       maleDancers.enqueue(new Dancer (sex, name));
//     }
//   }
// }

// function dance(){
//   console.log("The Dance Partners are: \n");
//   while( !femaleDancers.empty() && !maleDancers.empty()){
//     console.log(femaleDancers.dequeue());
//     console.log(maleDancers.dequeue());
//   }
// }

// var maleDancers = new Queue();
// var femaleDancers = new Queue();
// getDancers(maleDancers, femaleDancers);

// dance(maleDancers, femaleDancers);


function distribute(nums, queues, n, digit){
  for(var i=0; i < n; ++i){
    if (digit==1){
      queues[nums[i]%10].enqueue(nums[i]);
    } 
    else{
      queues[Math.floor(nums[i]/10)].enqueue(nums[i]);
    }
  }
}


function collect(queues, nums){
  var i = 0;
  for (var digit=0; digit < 10; ++digit){
    while(!queues[digit].empty()){
      nums[i++] = queues[digit].dequeue();
    }
  }
}

function dispArray(arr) {
for (var i = 0; i < arr.length; ++i) {
      console.log(arr[i] + " ");
   }
}

// Create 9 queues
var queues = [];
for(var i=0; i<10; ++i){
  queues[i] = new Queue();
}

// create 9 random nums
var nums=[];
for(var i = 0; i<10; ++i){
  nums[i] = Math.floor(Math.floor(Math.random()*101));
}

// console.log("Before radix sort: ");
// dispArray(nums);
// distribute(nums, queues, 10, 1);
// collect(queues, nums);
// distribute(nums, queues, 10, 10);
// collect(queues, nums);
// console.log("\n\nAfter radix sort: ");
// dispArray(nums);


// Piority Queues

function Patient(name, code){
  this.name = name;
  this.code = code;
}



