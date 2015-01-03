# Fibbonacci Number for Index:
def fibonacci(num)
  return num if num < 2
  fibonacci( num - 1) + fibonacci( num - 2 )
end

# Create Fibonacci Array
def fibonacci_array(num)
a = [1,1]
  while a[-1] + a[-2] < num
    a << a[-1] + a[-2]
  end
  a
end

# Create sum of even Fibonnaci numbers
def add_evens(array)
  sum = 0
  array.each { |num| sum += num if num.even?}
  sum
end

def add_fibonacci_evens(num)
  add_evens(fibonacci_array(num))
end

puts add_fibonacci_evens(4_000_000)