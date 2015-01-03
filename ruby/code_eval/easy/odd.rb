# time=> 99ms  mem=> 3571712bytes
def odds(number)
  (1..number).each { |num| puts num if num.odd? }
end

odds(99)