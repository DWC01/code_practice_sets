#Given a binary tree, find its maximum depth
#The maximum depth is the number of nodes along
#the longest path from the root node down to the farthest leaf node.

tree = [[nil,1,nil],2,[nil,3,[nil,4,[nil,5,[nil,6,nil]]]]]

def max_depth(tree)
  unless tree.kind_of?(Array)
    return 0
  else
    left_depth  = max_depth(tree[0])
    right_depth = max_depth(tree[2])
    return 1 + [left_depth,right_depth].max
  end
end

puts max_depth(tree) == 5
puts max_depth(tree)