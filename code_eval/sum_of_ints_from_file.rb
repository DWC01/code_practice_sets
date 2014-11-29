# SUM OF INTS FROM FILE
# time =>  92ms, 3833856memory =>  bytes

def sum_ints
  integers = []
  File.open(ARGV[0]).each_line do |line|
    integers.push line.chomp.to_i
  end
  integers.reduce(&:+)
end

print sum_ints