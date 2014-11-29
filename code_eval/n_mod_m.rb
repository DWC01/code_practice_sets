# time =>  125ms, memory => 3571712bytes
File.open(ARGV[0]).each_line do |line|
    n, m = line.chomp.split(",").map(&:to_i)
   print n.modulo m
   print "\n"
end