# Returns numbers of Fib Sequence less than max
def fib(max)
  a, b = 0, 1
  while b < max
    a,b = b,a+b
    yield b if b.even?
  end
end

sum = 0
fib(4_000_000) {|x| sum += x}
puts sum # => 4613732
