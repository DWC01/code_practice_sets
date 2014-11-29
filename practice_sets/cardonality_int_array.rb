# Find the Cardonality of an int array 

array5 = [0,1,2,3,4]
array9 = [0,1,2,3,4,5,6,7,8]
array3 = [0,1,2]

def cardonality(array)
  counter = 0
  array.each do |i|
    counter += 1
  end
  counter
end

puts cardonality(array5) == 5
puts cardonality(array9) == 9
puts cardonality(array3) == 3
