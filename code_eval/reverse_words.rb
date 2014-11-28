## Reverse Words

# time => 106 ms, memory => 3829760 bytes
File.open(ARGV[0]).each_line do |line|
  words = line.split
  print words.reverse.join(" ")
  puts
end

# time => 117 ms, memory => 3563520 bytes
File.open(ARGV[0]).each_line do |line|
  r_line = []
  words = line.split
  words.length.times{r_line << words.pop}
  print r_line.join(" ")
  puts
end
