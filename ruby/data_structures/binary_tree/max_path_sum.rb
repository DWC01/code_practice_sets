 # Max Path Sum

tree = [[[[nil,7,nil], 11, [nil,2,nil]],4,nil], 5, [[nil,13,nil],8,[nil,4,[nil,1,nil]]]]

def max_path_sum(tree)
  unless tree.kind_of?(Array)
    return 0
  else
    left_sum    = max_path_sum(tree[0])
    right_sum   = max_path_sum(tree[2])
    return tree[1] +  [left_sum, right_sum].max
  end
end

puts max_path_sum(tree) == 27
puts max_path_sum(tree)