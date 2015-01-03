matrix =  [[5, 2, 0, 3, 8],
           [3, 0, 5, 9, 4], 
           [3, 1, 3, 4, 5], 
           [9, 7, 9, 1, 2], 
           [8, 5, 0, 2, 3]]

def prime?(number)
  (2...number).each {|num| return false if number % num == 0}
  true
end

def possible_combos(matrix)
  matrix.each do ||
    permutation.to_a
  end
end

def primes_in_matrix(matrix)
  primes = []
  numbers = possible_combos(matrix)

  numbers.each do |num|
    if prime?(num.to_i)
      primes.push num
    end
  end
 primes
end

# puts prime?(3)   == true
# puts prime?(17)  == true
# puts prime?(4)   == false
# puts prime?(102) == false
puts possible_combos(matrix2)

# puts primes_in_matrix(matrix)

