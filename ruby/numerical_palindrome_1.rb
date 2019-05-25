=begin
Numerical Palindrome #1 by Vladislav Trotsenko.

A palindrome is a word, phrase, number, or other sequence of characters which reads the same
backward as forward. Examples of numerical palindromes are:

2332
110011
54322345

For a given number num, write a function to test if it's a numerical palindrome or not and
return a boolean (true if it is and false if not). Return "Not valid" if the input is not
an integer or less than 0. 
=end

def palindrome(num)
  case
    when num.is_a?(Integer) && num > 0 then
      num = num.to_s.chars
  	    halfsize = num.size/2
      num.first(halfsize) == num.last(halfsize).reverse
    else 'Not valid'
  end
end

palindrome(124521)

=begin
Super refactoring code:
def palindrome(num)
  num.is_a?(Integer) && num > 0 ? num.to_s == num.to_s.reverse : "Not valid"
end
=end