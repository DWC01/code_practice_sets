# time =>  98ms, memory => 3567616 bytes
File.open(ARGV[0]).each_line do |line|
   args = line.split

    x = args[0].to_i
    y = args[1].to_i
    n = args[2].to_i

    (1..n).each do |i|
      s = ""
      s += "F" if i % x == 0
      s += "B" if i % y == 0
      s == "" ? s = i.to_s : s
      
      if n == i then print s else print s + " " end
    end
  puts
end


# time =>  86ms, :memory => 4,104,192 bytes
File.open(ARGV[0]).each_line do |line|
   args = line.split

    x = args[0].to_i
    y = args[1].to_i
    n = args[2].to_i

    (1..n).each do |i|
      s = ""
      s += "F"    if i % x == 0
      s += "B"    if i % y == 0
      s += i.to_s if i % x != 0 && i % y != 0
      
      if n == i then print s else print s + " " end
    end
  puts
end



