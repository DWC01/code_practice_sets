# Unique Binary Search Trees 
# Given n, how many structurally unique BST's (binary search trees) 
# that store values 1...n?

def num_trees(n)
  if n < 1
    1
  else
    sum = 0
    (1..n).each do |num|
      left_trees  = num_trees(num-1)
      right_trees = num_trees(n-num)
    end
    sum += left_trees*right_trees
  end
  return sum
end

puts num_trees(3) == 5 