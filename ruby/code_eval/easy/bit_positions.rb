# time=> 126ms, memory=> 2519040 bytes
File.open(ARGV[0]).each_line do |line|
  args = line.split(",")

  n  = args[0].to_i
  p1 = (args[1].to_i)-1
  p2 = (args[2].to_i)-1

  print ((n >> p1)&1).to_s(2) == ((n >> p2)&1).to_s(2)
  print "\n"

end


# time=>100 ms, memory=>3571712 bytes
File.open(ARGV[0]).each_line do |line|
  args = line.split(",")

  n  = args[0].to_i
  p1 = args[1].to_i
  p2 = args[2].to_i

  print ((n >> p1-1)&1).to_s(2) == ((n >> p2-1)&1).to_s(2)
  print "\n"

end

# time=>115 ms, memory=>3571712 bytes
File.open(ARGV[0]).each_line do |line|
  args = line.split(",")
  n  = args[0].to_i
  p1 = args[1].to_i
  p2 = args[2].to_i
  puts ((n >> p1-1)&1).to_s(2) == ((n >> p2-1)&1).to_s(2)
end

#time =>77, memory=> 4100096 bytes
File.open(ARGV[0]).each_line do |line|
  args = line.split(",")
  n,p1,p2  = args[0].to_i,args[1].to_i,args[2].to_i
  print ((n >> p1-1)&1).to_s(2) == ((n >> p2-1)&1).to_s(2)
  print "\n"
end

=begin
-------- NOTES -------

Bits - Positive

+ 4 2 1
--------
0 0 0 0  == 0

+ 4 2 1
--------
0 0 0 1  == 1

+ 4 2 1
--------
0 0 1 1  == 3

+ 4 2 1
--------
0 1 1 1  == 7

Bits - Negative

- 4 2 1
--------
1 1 1 1  == -1

- 4 2 1
--------
1 1 1 0  == -2

- 4 2 1
--------
1 1 0 1  == -3

- 4 2 1
--------
1 0 0 0  == -8

# rjust pads the bits to ensure they are represnted as 8 bits
# Print the below into the console to see a visual representation
# of the comparison in ruby:

print "86 Binary= "
puts 86.to_s(2).rjust(8, '0')
puts ""

print "86 rshift1 "
puts (86 >> 1).to_s(2).rjust(8, '0')
print "comp to 1  "
puts (1).to_s(2).rjust(8, '0')
puts "           --------"
print "           "
puts ((86 >> 1)&1).to_s(2).rjust(8,'0')
puts ""

print "86 rshift2 "
puts (86 >> 2).to_s(2).rjust(8, '0')
print "comp to 1  "
puts (1).to_s(2).rjust(8, '0')
puts "           --------"
print "           "
puts ((86 >> 2)&1).to_s(2).rjust(8,'0')
puts ""
=end