# time => 1076ms memory=> 3567616bytes
def prime?(number)
  return false if number < 2
  (2...number).each {|num| return false if number % num == 0}
  true
end

def sum_primes(number)
  num   = 2
  prime = 1
  sum   = 0
  
  while prime <= number
    if prime?(num)
      sum += num 
      prime += 1
    end
    num +=1
  end
  sum
end

puts sum_primes(1000)
