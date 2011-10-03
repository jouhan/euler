require 'Prime'

def prime
  Enumerator.new { |y|
    primes, i = [2], 3
    loop do
      y.yield i unless primes.any? { |p| i%p==0 }
      i+=2
    end
  }
end

def factor(max)
  p = 2
  remaining = max

  while remaining!=1 and p <= remaining
    remaining%p==0 ? remaining/=p : p = prime.next
    puts p
  end
end


puts prime.take(10)
#factor(10)

# Libraries. :)
puts Prime.prime_division(600851475143).last.first