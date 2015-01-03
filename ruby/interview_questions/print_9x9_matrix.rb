def print_matrix(number) 
  row_vals = number
  col_vals = number

  (1..row_vals).each do |row_val|
    (1..col_vals).each do |col_val|
      printf('%5d', row_val * col_val)
    end
    print "\n"
  end
end

print_matrix 9