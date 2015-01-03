def fibonacci(num)
  return 1 if num == 1 or num == 2
  a = [1,1]
  count = 0

  # builds up fibonacci array a little bigger than the actual index
  # this is OK
  while count <= num
    a.push a[-1] + a[-2]
    count += 1
  end
  a[num-1] # since array starts at 0, need to subtract 1 to get to correct index
end