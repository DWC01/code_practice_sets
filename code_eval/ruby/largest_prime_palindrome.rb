def palindrome?(str)
  return true if str == str.reverse
  false
end

def prime?(number)
  return false if number <= 1
  (2...number).each {|num| return false if number % num == 0 }
  true
end

def largest_prime_palindrome(number)
  largest = 0
  (2...number).each do |num|
    if palindrome?(num.to_s) && prime?(num) 
      largest = num
    end
  end
  largest
end

# time =>  ms, memory =>  bytes
File.open(ARGV[0]).each_line do |line|
  puts largest_prime_palindrome(line.chomp.to_i)
end



puts palindrome?("123abcdcba321") == true
puts palindrome?("123abcdcba123") == false

puts prime?(1)   == false
puts prime?(3)   == true
puts prime?(13)  == true
puts prime?(4)   == false