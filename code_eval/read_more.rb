# time =>  98ms, memory =>  3559424bytes
def read_more(line)
  return line if line.size <= 55

  line = line[0...40]
  last_space_idx = line.rindex(' ')
  line = line[0...last_space_idx] if last_space_idx
  line + '... <Read More>'
end

File.open(ARGV[0]).each_line do |line|
  print read_more(line.chomp)
  print "\n"
end
