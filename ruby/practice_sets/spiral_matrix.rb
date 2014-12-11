# Spiral Matrix

matrix =  [[11, 12, 13, 14, 15],
           [21, 22, 23, 24, 25],
           [31, 32, 33, 34, 35],
           [41, 42, 43, 44, 45]]

def print_spiral(matrix)
  print matrix[0].inspect
  
  (0..matrix.length).each do |i|
    print matrix[i][4]
  end
end

puts print_spiral(matrix)