class Node
  attr_accessor :value, :next
  
  def initialize(value, next_node)
    @value = value
    @next = next_node
    puts "Initialize a node with value: " + value.to_s
  end
end

class LinkedList
  attr_reader :head

  def initialize value
    @head = Node.new(value, nil)
  end

  def add(value)
    current = head
      until current.next == nil
        current = current.next
      end
    current.next = Node.new(value, nil)
  end

  def delete(value)
    head == head.next if head.value == value
    current = head

    while current.next != nil && current.next.value != value
      current = current.next
    end

    if current.next != nil
      current.next = current.next.next
    end
  end
  
  def reverse
    prev      = nil
    current   = head
    
    while current.next != nil
      # save next node in var
      _next = current.next
      # reverse the link
      current.next = prev
      # set next iteration
      prev = current
      current  = _next
    end
    @head = current
  end

  def display
    list=[]
    current = head
    until current == nil
      list.push current
      current = current.next
    end
    print list
    print "\n"
  end
end

list = LinkedList.new(1)

list.add(2)
list.add(3)
list.add(4)
list.add(5)
list.add(6)
list.add(7)

list.reverse

list.display




