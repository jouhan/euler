def is_palindrome?(num)
  num.to_s == num.to_s.reverse
end

max_palindrome = 0
max = 999

max.downto(101) do |x|
  max.downto(x) do |y|
    val = x*y  
    if is_palindrome?(val)
      (val > max_palindrome) ? max_palindrome = val : break
    end
  end
end

puts max_palindrome # => 906609