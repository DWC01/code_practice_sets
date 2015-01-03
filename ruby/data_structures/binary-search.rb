def binary_search(num, array)
  low = 0
  high = array.length - 1

 while low <= high
  middle = (low + high)/2
    if num == array[middle]
      return middle
    else
      num > array[middle] ? low = middle + 1 : high = middle - 1
    end

 end
-1
end

p binary_search(103, [23, 42, 57, 99, 103, 203]) == 4