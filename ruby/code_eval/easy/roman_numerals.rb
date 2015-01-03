@romans = {
  1000 => 'M',
   900 => 'CM',
   500 => 'D',
   400 => 'CD',
   100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
     9 => 'IX',
     5 => 'V',
     4 => 'IV',
     1 => 'I'
}

def rome_to_num(number)
  result=""
  @romans.each do |digit, roman|
    quotient, remainder = number.divmod(digit)
    result << roman * quotient
    number = remainder
  end
  result
end

File.open(ARGV[0]).each_line do |line|
  num = line.strip.to_i
  puts rome_to_num(num)
end