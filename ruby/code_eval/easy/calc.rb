def is_number?(expr)
  return false if expr.nil?
  expr.to_s.match /^(\d+|\d+\.\d+)$/
end
 
def calc(expr)
  return expr.to_i if is_number?(expr)
  expr.gsub!(" ","")

  arr = expr.split /\+/
  return arr.reduce {|x,y| calc(x) + calc(y) } if arr.size > 1

  arr = expr.split /\-/  
  return arr.reduce {|x,y| calc(x) - calc(y) } if arr.size > 1

  arr = expr.split /\*/
  return arr.reduce(1){|x,y| calc(x) * calc(y) } if arr.size > 1

  arr = expr.split /\//
  return arr.reduce {|x,y| calc(x) / calc(y) } if arr.size > 1
end
 
puts calc("5.0+5*6+4/2")
