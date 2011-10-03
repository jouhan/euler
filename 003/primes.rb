require 'prime'

def prime
  Enumerator.new { |y|
    primes, i = [2], 3
    loop do
      unless primes.any? { |p| i%p==0 } then
        primes << i
        y.yield i
      end
      i+=2
    end
  }
end

# (Assumes input with prime composites.)
def factor(max)
  remaining, p = max, 2
  enum = prime

  while remaining!=1 and p <= remaining
    remaining%p==0 ? remaining/=p : p = enum.next
  end
  p
end

puts factor(600851475143)

# Libraries. :)
puts Prime.prime_division(600851475143).last.first