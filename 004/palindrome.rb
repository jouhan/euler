def is_palindrome?(num)
  num.to_s == num.to_s.reverse
end

palindromes = [0]
max = 999

max.downto(100).each do |x|
  max.downto(x).each do |y|
    val = x*y
    palindromes << val if is_palindrome?(val)
    break if val < palindromes.max
  end
end

puts palindromes.max