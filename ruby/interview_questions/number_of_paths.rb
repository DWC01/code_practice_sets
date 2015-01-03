matrix = [[1,2,3,4],
        [5,6,7,8],
        [9,10,11,12],
        [13,14,15,16]
      ]

def paths(grid, partial_path = [[0,0]], paths = [])
  return paths if grid.empty?
  
  last_cell = partial_path.last
  
  grid.each do |cell|
    if adjacent?(last_cell,cell)
      pp = partial_path + [cell]
      if cell == [3,3]
        paths << pp
      else
        paths(grid-[cell], pp, paths)
      end
    end  
  end

  paths
end

def adjacent?(a,b)
  ra, ca = a
  rb, cb = b
  ((ra==rb) && (ca==cb+1 || ca==cb-1)) ||
  ((ca==cb) && (ra==rb+1 || ra==rb-1))
end

num = paths(matrix).size
puts num