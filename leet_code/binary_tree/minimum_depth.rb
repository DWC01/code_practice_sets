#Given a binary tree, find its minimum depth
#The minumum depth is the number of nodes along
#the shortest path from the root node down to the farthest leaf node.

tree = [[nil,1,nil],2,[nil,3,[nil,4,[nil,5,[nil,6,nil]]]]]

def min_depth(tree)
  unless tree.kind_of?(Array)
    return 0
  else
    left_depth  = min_depth(tree[0])
    right_depth = min_depth(tree[2])
    return 1 + [left_depth,right_depth].min
  end
end

puts min_depth(tree) == 2
puts min_depth(tree)
