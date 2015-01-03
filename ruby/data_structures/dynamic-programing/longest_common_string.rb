def longest_common_string(word1, word2)
  max = 0
  index = 0
  
  lcs_array = Array.new(word1.length+1) {Array.new(word2.length+1){0}}

  lcs_array.each_with_index do |row, ri|
    row.each_with_index do |col, ci|
      
      if ri == 0 or ci == 0 
        lcs_array[ri][ci] = 0

      elsif word1[ri-1] == word2[ci-1]
        lcs_array[ri][ci] = lcs_array[ri-1][ci-1] + 1
        
      else
        lcs_array[ri][ci] = 0
      end

      if max < lcs_array[ri][ci]
        max = lcs_array[ri][ci]
        index = ri
      end

    end
  end 

  str = ''
  return 'There were no matches.' if max == 0

  i = (index-max)
  while i <= max
    str += word2[i]
    i += 1 
  end

  str
end

puts longest_common_string("abcdefg", "hijklmnop  ")