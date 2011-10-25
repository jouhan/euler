require 'prime'

def prime
  Enumerator.new { |y|
    primes, i = [2], 3
    skip3 = false
    loop do
      # Checks against mod of previously-found prime numbers.
      unless primes.any? { |p| i%p==0 } then
        primes << i
        y.yield i
      end
      # Skips multiples of 2 and 3 (after 6).
      skip3 = !skip3 if i > 6 
      skip3 ? i+=4 : i+=2
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