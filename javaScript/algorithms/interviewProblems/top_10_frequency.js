var fs  = require("fs");
var str = fs.readFileSync("large-text.txt").toString();
var frequency = function(str, n){
  var words = str.split(/\s+/);

  //Count Occurrences
  var counts = words.reduce(function (hash, word){
      if (word){
        hash[word] = (hash[word] || 0) +1;
      }
      return hash;
  }, {});

console.log(counts);

  //Sort by count DESC
  var sorted = Object.keys(counts).sort(function (a, b){
    return counts[a];
  });


console.log("--------Obj,key.counts");
console.log(Object.keys(counts));

  // Return the first n words separated by line breaks
  return sorted.slice(0, n).join("\n");
}


console.log(frequency(str, 10));
