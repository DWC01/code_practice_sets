# Spiral Matrix

matrix =  [[11, 12, 13, 14, 15],
           [21, 22, 23, 24, 25],
           [31, 32, 33, 34, 35],
           [41, 42, 43, 44, 45]]

def print_spiral(matrix)
  array = []

  until matrix.empty?
    array.push matrix.shift
    #reverses rows, so order or nums in rows stay in tact
    matrix = transpose_r(matrix)
  end
  array
end

def transpose_r(matrix)
  transposed = []
  row = []

  unless matrix.empty? 
    ((matrix.first.length-1).downto(0)).each do |i|
      puts i
      row =[]
      matrix.each do |col|
        row.push col[i]
      end
    transposed.push row
    end
  end
transposed
end
# puts transpose_dc(matrix)
puts print_spiral(matrix)