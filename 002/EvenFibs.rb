# Returns numbers of Fibonacci Sequence < max
def fib(max)
  a, b = 0, 1
  while b < max
    a,b = b,a+b
    yield b
  end
end

sum = 0
fib(4_000_000) {|x| sum += x if x.even?}
puts sum # => 4613732
