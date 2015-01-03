array = [5,8,9,10,4,7,2,13,16]

# O (n^2)
def two_sum_n2(array, sum)
  array.each do |num_1|
    array.each do |num_2|
      return true if num_1 + num_2 == sum
    end
  end
  false
end

puts two_sum_n2(array, 13) == true
puts two_sum_n2(array, 21) == true
puts two_sum_n2(array, 17) == true
puts two_sum_n2(array, 101)== false



# O(n)
def two_sum_n(array, sum)
  numHash={}

  array.each do |num|
    difference = sum - num
    if numHash[difference]
      return true
    else
      numHash[num] = true
    end
  end
  false
end

puts two_sum_n(array, 13) == true
puts two_sum_n(array, 21) == true
puts two_sum_n(array, 17) == true
puts two_sum_n(array, 101)== false


