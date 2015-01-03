def rightmost_char(s,t)
  puts (s.rindex(t) || -1)
end

File.open(ARGV[0]).each_line do |line|
  unless line.empty?
    s,t = line.strip.split(",")
    rightmost_char(s,t)
  end
end