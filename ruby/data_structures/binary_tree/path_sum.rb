# Path Sum
# Given a binary tree and a sum, determine if the tree has a root-to-leaf path
# such that adding up all the values along the path equals the given sum.
# Depth-First

tree = [[[[nil,7,nil], 11, [nil,2,nil]],4,nil], 5, [[nil,13,nil],8,[nil,4,[nil,1,nil]]]]

def has_path_sum(tree,sum)
  if tree[1] == nil
    return false
  end
  if tree[0] == nil && tree[2] == 0 
    return sum == tree[1]
  else
    return has_path_sum(tree[0], sum-tree[1]) || has_path_sum(tree[2], sum-tree[1])
  end
end

puts has_path_sum(tree,22)