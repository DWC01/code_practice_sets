# Multiples of 3 and 5
def sum_multiples_3_5(num)
  sum = 0
  (1...num).each do |digit|
    sum += digit if (digit % 3 == 0 ) || (digit % 5 == 0)
  end
  sum
end

puts sum_multiples_3_5(1000)
