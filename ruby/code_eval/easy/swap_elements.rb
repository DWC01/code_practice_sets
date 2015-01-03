# # time => 107ms, memory=> 3821568 bytes
# def swap_elements(elements, instractions)

#     instractions.each do |instraction|
#       instraction = instraction.split("-")
#       from = instraction[0].to_i
#       to   = instraction[1].to_i

#       elements[from],elements[to] = elements[to], elements[from]
#     end
#     print elements.join(" ")
#     print "\n"
# end

# File.open(ARGV[0]).each_line do |line|

#   elements, instractions = line.chomp.split(':')
#   elements = elements.split
#   instractions = instractions.split(',').map {|instraction| instraction.strip}

#   swap_elements(elements, instractions)
# end

# time =>  125 ms, memory=>  2256896 bytes
def swap_elements(elements, instractions)
    instractions.each do |instraction|
      from, to = instraction.split("-").map(&:to_i)
      elements[from],elements[to] = elements[to], elements[from]
    end
    print elements.join(" ")
    print "\n"
end

File.open(ARGV[0]).each_line do |line|

  elements, instractions = line.chomp.split(':')
  elements = elements.split
  instractions = instractions.split(',').map(&:strip)

  swap_elements(elements, instractions)
end

## Steps ##
=begin 
1.) Separate elements and inversions
2.) Further split elements and inversions into their own array
3.) Swap elements by setting the two elements current values, 
to their new "swapped" values.
=end