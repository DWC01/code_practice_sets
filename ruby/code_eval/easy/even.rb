# # time =>  130ms, memory =>  4104192bytes
# File.open(ARGV[0]).each_line do |line|
#   num = line.chomp.to_i
#   if num.even? then puts "1" else puts "0" end
# end

# Solution 2
# time =>  109ms, memory =>  3833856bytes
File.open(ARGV[0]).each_line do |line|
  if line.chomp.to_i.even? then puts "1" else puts "0" end
end