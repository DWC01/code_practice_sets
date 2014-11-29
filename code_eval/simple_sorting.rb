#  Selection Sort 
# 0(n^2) time complexity 

# time =>  127ms, memory =>  2519040bytes

# def selection_sort(numbers)
#   tmp_array   = numbers.dup
#   results     = []

#     until tmp_array.empty?
#       min_num_index = tmp_array.find_index(tmp_array.min)
#       results.push tmp_array.delete_at(min_num_index)
#     end
#   results.map {|num| "%.3f" % num}
# end


# File.open(ARGV[0]).each_line do |line|
#   numbers = line.chomp.split.map(&:to_f)
#   puts selection_sort(numbers).join(' ')
# end


#  Merge Sort 
# 0(n^2) time complexity 

def mergesort(array)
  def merge(left_sorted, right_sorted)
    res = []
    l = 0
    r = 0
 
    loop do
      break if r >= right_sorted.length and l >= left_sorted.length
 
      if r >= right_sorted.length or (l < left_sorted.length and left_sorted[l] < right_sorted[r])
        res << left_sorted[l]
        l += 1
      else
        res << right_sorted[r]
        r += 1
      end
    end
 
    return res
  end
 
  def mergesort_iter(array_sliced)
    return array_sliced if array_sliced.length <= 1
 
    mid = array_sliced.length/2 - 1
    left_sorted = mergesort_iter(array_sliced[0..mid])
    right_sorted = mergesort_iter(array_sliced[mid+1..-1])
    return merge(left_sorted, right_sorted)
  end
 
  mergesort_iter(array).map {|num| "%.3f" % num}
end

File.open(ARGV[0]).each_line do |line|
  numbers = line.chomp.split.map(&:to_f)
  puts mergesort(numbers).join(' ')
end


