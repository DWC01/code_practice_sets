# time =>  126ms  2527232meory => bytes
def multiplicaiton_table(number)
  rows = number 
  cols = number

  (1..rows).each do |r|
    print r
    (2..cols).each do |c|
      printf(STDOUT, '%4d', r * c)
    end
    print "\n"
  end
end

multiplicaiton_table(12)

