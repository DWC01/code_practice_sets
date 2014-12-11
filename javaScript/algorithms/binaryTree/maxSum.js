var node = [8,[5,[9,[2,null,null,null],null,null],[4,[6,null,null,null],null,[3, null,null,null]],null],[7,[9,null,null,null],null,null],[2,null,null,[1,null,null,null]]]

// function getMaxSum(node){
//   if(node == null) { return 0 }

//   var leftSum   = getMaxSum(node[1]);
//   var middleSum = getMaxSum(node[2]);
//   var rightsum  = getMaxSum(node[3]);

//   return node[0] + Math.max(leftSum, middleSum, rightsum);
// }

// console.log(getMaxSum(node));

function getMaxSumNoAdj(node){
  if(node == null) { return 0 }

  var leftSum   = getMaxSumNoAdj(node[1]);
  var middleSum = getMaxSumNoAdj(node[2]);
  var rightsum  = getMaxSumNoAdj(node[3]);

  return node[0] + Math.max(leftSum, middleSum, rightsum);
}

console.log(getMaxSumNoAdj(node));
