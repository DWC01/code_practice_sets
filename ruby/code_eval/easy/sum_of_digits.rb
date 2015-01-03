# SUM OF DIGITS
# time =>  129ms, memory =>  2777088bytes
File.open(ARGV[0]).each_line do |line|
  print line.chomp.split('').map(&:to_i).reduce(&:+)
  print "\n"
end