# Max Path Sum

tree = [[[[nil,7,nil], 11, [nil,2,nil]],4,nil], 5, [[nil,13,nil],8,[nil,4,[nil,1,nil]]]]

def max_path_sum(tree)
  return 0 unless tree.kind_of?(Array) 

  left_path  = max_path_sum(tree[0])
  right_path = max_path_sum(tree[2])

  return tree[1] + [left_path, right_path].max
end

puts max_path_sum(tree)