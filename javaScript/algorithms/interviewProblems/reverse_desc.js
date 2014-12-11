var nums = 57896

function sort_desc(digit){
  var desc_nums =[];
  var digit_array = [];
  var biggest_int;
  
  digit_array = digit.toString().split("")

  while (digit_array){

    for(var i = 0; i < digit_array.length; i++){
        biggest_int = 0;
        
        if(digit_array[i] > biggest_int){
          biggest_int = digit_array[i];
        }
    }
    desc_nums.push(biggest_int);
    console.log(desc_nums);
    // Remove Item
    index = desc_nums.indexOf(biggest_int);
    desc_nums.splice(index,1);
  }
  return num.toString();
}

console.log(sort_desc(nums));