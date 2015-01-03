def longest_common_string(word1, word2)
  max = 0
  index = 0
  
  ## Build Array ##

  # row/column count with word1/word2 lengths + 1 respectively
  lcs_array = Array.new(word1.length+1) {Array.new(word2.length+1){0}}

  
  ## Fill Array ##

  lcs_array.each_with_index do |row, ri|
    row.each_with_index do |col, ci|
      
      # if at index 0, set the first element to 0, as a base for addition
      if ri == 0 or ci == 0 
        lcs_array[ri][ci] = 0
      # now that on index 1, start checking the strings at index 0
      elsif word1[ri-1] == word2[ci-1]
      # if strings match, set current index to the previous index + 1
        lcs_array[ri][ci] = lcs_array[ri-1][ci-1] + 1
      else
      # else set curren to 0
        lcs_array[ri][ci] = 0
      end

      if max < lcs_array[ri][ci]
        max = lcs_array[ri][ci]
        index = ri
      end

    end
  end # End 2ble loop

  puts lcs_array.inspect
  ## Build String ##
  str = ''
  return '' if max == 0

  puts index
  puts max 
  i = (index-max)
  
  while i <= max
    str += word2[i]
    i += 1 
  end

  str
end

puts longest_common_string("dbccddee", "abccdd")

# 1st pass

# (0||0) sets all combination of index to be 0's, sets padding for array
# (1,1) no match, a[0] != b[0], and is represented a index 1,1 
# (2,2) mathc, a[1] == b[1], and is represtned at 2,2 with (0+1)
     
[[0, 0, 0], 
 [0, 0, 0], 
 [0, 0, 1]]


[[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], # Need number of rows to correctly iterate
 [0, 0, 1, 1, 0, 0, 0, 0, 0, 0], # though all index's of word 1 and keep track
 [0, 0, 1, 2, 0, 0, 0, 0, 0, 0], # max's on way down
 [0, 0, 0, 0, 3, 1, 0, 0, 0, 0],
 [0, 0, 0, 0, 1, 4, 0, 0, 0, 0]]

        # Columns representing index of word2, and the max number of
        # matches, once done, we simple take the row index the max num
        # ends, and subtract the max num, this is starting point of the
        # matched strings, form here you can count foward and collect the
        # matched strings..

[[0, 0, 0, 0, 0, 0, 0, 0, 0], 
 [0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 1, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 2, 1, 0, 0, 0, 0],
 [0, 0, 0, 1, 3, 0, 0, 0, 0],
 [0, 1, 0, 0, 0, 4, 1, 0, 0],
 [0, 1, 0, 0, 0, 1, 5, 0, 0]]

  # other starts of 1 represent other random matched strings
  # first letter to last second to last letter etc..
  # but doesnt continue so ends there..

