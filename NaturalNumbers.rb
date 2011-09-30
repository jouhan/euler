# Add all natural numbers < 1000 that are multiples of 3 or 5.
# (Assumes valid input.)
#
# Returns sum.
def calc(max, *mult)
  max.times.inject do |sum, i|
    sum += i if mult.any? {|m| i%m == 0}
    sum
  end
end

puts calc(1000, 3, 5) # => 233168