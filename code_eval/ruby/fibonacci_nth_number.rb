def fibonacci(num)
  return num if num < 2
  fibonacci(num-2) + fibonacci(num-1) 
end

# time =>  129ms, memory => 3571712bytes
File.open(ARGV[0]).each_line do |line|
 puts fibonacci(line.to_i)
end