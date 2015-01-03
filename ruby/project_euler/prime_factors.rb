def prime?(number)
  return false if number < 2
  (2...number).each { |x| return false if number % x == 0 }
  true
end
 
def largest_prime_factor(number)
  primes = []
  count  = 2
  product_sum = 1

  while product_sum < number
    if number % count == 0 && prime?(count)
      primes.push count
      product_sum *= count
    end
    count += 1
  end
  primes.last
end

puts largest_prime_factor(600_851_475_143)