// Print Spiral Matrix
// 1.) Base Case = Matrix.length == 1
// 2.) Set Up Vars
// 3.) Actual Rotation -> Cols go down, Rows go up 
// 4.) 

var arr = [ [  0,  1,  2,  3 ],
            [  4,  5,  6,  7 ],
            [  8,  9, 10, 11 ]
          ]; 

function spiralify(matrix){
  // base-case: if only one row, return the row
  if( matrix.length == 1 ) {return matrix[0]}

  var firstRow  = matrix[0];
  var numRows   = matrix.length;

  // rotate remaining rows and put in new array
  var nextMatrix = [];
  var newRow, rowIdx;
  var colIdx = matrix[1].length - 1;

  // actual rotation
  for(colIdx; colIdx >= 0; colIdx--){
    newRow = [];

    // take each row starting with 1
    for (rowIdx = 1; rowIdx < numRows; rowIdx++){ 
      // .. and add that item to at colIdx to the newRow
      newRow.push(matrix[rowIdx][colIdx]);
    }
    nextMatrix.push( newRow );
  }

  // pass nextMatrix to Spiralify and join the result to firstRow
  firstRow.push.apply(firstRow, spiralify( nextMatrix ) );
  return firstRow;
}

console.log( "RESULT\t", spiralify( arr ) );