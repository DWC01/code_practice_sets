#  Selection Sort 
# 0(n^2) time complexity 

# time =>  127ms, memory =>  2519040bytes

def selection_sort(numbers)
  tmp_array   = numbers.dup
  results     = []

    until tmp_array.empty?
      min_num_index = tmp_array.find_index(tmp_array.min)
      results.push tmp_array.delete_at(min_num_index)
    end
  results.map {|num| "%.3f" % num}
end


File.open(ARGV[0]).each_line do |line|
  numbers = line.chomp.split.map(&:to_f)
  puts selection_sort(numbers).join(' ')
end
