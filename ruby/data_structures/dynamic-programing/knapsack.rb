value = [4,5]; size = [3,4]; capacity = 10; items = 2;

# Recursive Solution ##

  def knapsack(capacity, size, value, items)
    return 0 if items == 0 || capacity == 0 

    if size[items-1] > capacity
      return knapsack(capacity, size, value, items-1)
    else
      return [value[items-1] + knapsack(capacity-size[items-1], size, value, items-1),
              knapsack(capacity, size, value, items-1)].max
    end

  end
  
  # Recursive
  #
  # 1.) First ask, what are my base cases?
  #  -> Inital checks for null   
  #  -> Then checks for solution solved, (size > cpacity)
  #
  # 2.) What set are we iterating though, and what value needs to 
  #     changed to make this next iteration?
  #  -> In this case, lowering item index, and capacity value
  # 
  # 3.) Then set the value that needs to be returned/accumulated up
  #     the stack.
  #  -> In this case, the highest value 

  # puts knapsack(capacity, size, value, items)

## Dynamic Solution ##
 
  def dknapsack(capacity, size, value, items)
    # Set Arrays with capacity+1 rows
    kn = Array.new(items+1) {Array.new()}

    # Iterate through items (check size and value)
    (0..items).each do |i|
      # Iterate through capacity
      (0..capacity).each do |c|
        
        # pad first column and row
        if i == 0 || c == 0 
          kn[i][c] = 0

        elsif size[i-1] <= c

          # 2, 6
          # i = 2
          # c = 6
          # size = 4
          # value = 5

          # index     curr_val   + [ (previous_item, same_capacity - curr_size ), value at => (previous_item, same_capacity) 
          # (2,6) =   ( 5        +  (1,2) , (1,6) ].max
          # (2,6) =   ( 5 + 0 , 4 ].max
          # (2,6) = 5

          # 2, 7
          # i = 2
          # c = 6
          # size = 4
          # value = 5

          # index     curr_val   + [ (previous_item, same_capacity - curr_size ), value at => (previous_item, same_capacity) 
          # (2,7) =   ( 5        +  (1,3) , (1,6) ].max
          # (2,7) =   ( 5 + 0 , 4 ].max


          kn[i][c] = [value[i-1] + kn[i-1][c-size[i-1]], kn[i-1][c]].max 
        else
          kn[i][c] = kn[i-1][c]
        end
      end
    end

    puts kn.inspect
    puts " "
    kn[items][capacity]
  end

puts dknapsack(capacity, size, value, items)

  # Dynamic
  #
  # Notes: 
  # - Think of item count as your index (item-1) to 
  #   access size and value on array iterations
  # - Assuming that size and value are both sorted min-max
  #
  # 1.) 


[[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
 [0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4],
 [0, 0, 0, 4, 5, 5, 5, 9, 9, 9, 9]]


                                            
# [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
#  [0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4],  # Rows represent total items
#  [0, 0, 0, 4, 5, 5, 5, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9],
#  [0, 0, 0, 4, 5, 5, 5, 10, 10, 10, 14, 15, 15, 15, 19, 19, 19],
#  [0, 0, 0, 4, 5, 5, 5, 10, 11, 11, 14, 15, 16, 16, 19, 21, 21],
#  [0, 0, 0, 4, 5, 5, 5, 10, 11, 13, 14, 15, 17, 18, 19, 21, 23]]
 
#  # Columns represent capacity at index

#  # Each row keeps a running total of what the value is at that index
   # On each iteration we also know the size,

