# Is Binary Tree?
  tree = [[[[nil,7,nil], 11, [nil,2,nil]],4,nil], 5, [[nil,13,nil],8,[nil,4,[nil,1,nil]]]]

  def is_array(array)
    array.class == Array
  end

  def is_any_array(array)
    array != nil && is_array(array) 
  end

  def is_binary_tree(tree)
    return true if tree == nil
    return false if is_any_array(tree) == false

    if tree.length == 3 && tree[1]!=nil
      return is_binary_tree(tree[0]) == true &&
             is_binary_tree(tree[2]) == true
    else
      return false
    end
  end

t = nil
puts is_binary_tree(t) == true

t = [nil, 2, 3]
puts is_binary_tree(t) == false
              
tree = [nil, 3, nil] 
puts is_binary_tree(tree) == true           
              
t = [[nil,2,nil], 3, nil]
puts is_binary_tree(t) == true        
 
t = [[nil,2,nil], 3, [nil,1,2]]
puts is_binary_tree(t) == false

tree = [[[[nil,7,nil], 11, [nil,2,nil]],4,nil], 5, [[nil,13,nil],8,[nil,4,[nil,1,nil]]]]
puts is_binary_tree(tree) == true











