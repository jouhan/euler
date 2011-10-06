def is_palindrome?(num)
  num.to_s == num.to_s.reverse
end

array = []
palindromes = []

(100..999).each do |x|
  array.each do |y|
    palindromes << x*y if is_palindrome?(x*y)
  end
  palindromes << x*x if is_palindrome?(x*x)
  array << x
end

puts palindromes.max
