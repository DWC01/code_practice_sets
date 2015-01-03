def palindrome?(num)
  num = num.to_s
  num == num.reverse
end
 
def divisable?(num)
  999.downto(100).each do |int| 
    return true if num % int == 0 && ans_length_of_three?(num,int)
  end
  false
end

def ans_length_of_three?(num,int)
  (num / int).to_s.length == 3 
end

def largest_palendrome_product?
  999999.downto(100000).each do |int|
    if palindrome?(int) && divisable?(int)
      return int
    end
  end
end

puts largest_palendrome_product?