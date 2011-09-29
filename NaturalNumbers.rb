# Add all natural numbers < 1000 that are multiples of 3 or 5.
# (Assumes valid input.)
#
# Returns sum.
def calc_mults(max, *mult)
  sum = 0
  product = 1

  # Adds multiples of each number.
  mult.each do |m|
    product = product*m
    (1..(max-1)/m).each do |i|
      sum = sum + m*i
    end
  end

  # Subtracts multiples of product.
  (1..(max-1)/product).each do |i|
    sum = sum - product*i
  end

  sum
end

puts calc_mults(1000, 3, 5)