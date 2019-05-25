=begin
Numerical Palindrome #1.5 by Vladislav Trotsenko.

A palindrome is a word, phrase, number, or other sequence of characters which reads
the same backward as forward. Examples of numerical palindromes are:

2332
110011
54322345

You'll be given 2 numbers as arguments: (num,s). Write a function which returns an
array of s number of numerical palindromes that come after num. If num is a palindrome
itself, it should be included in the count.

Return "Not valid" instead if any one of the inputs is not an integer or is less than 0.
=end

def palindrome(num,s)
  return 'Not valid' if [num, s].none? { |i| i.is_a?(Integer) && i.positive? }
  result = []
    until result.size == s
	  num = 11 if num < 10
      result << num if num.to_s == num.to_s.reverse
      num+=1
    end
  result
end

p palindrome(101, 5)


=beginBefore refactoring code 2:
def palindrome(num,s)
  return 'Not valid' unless [num, s].all? { |i| i.is_a?(Integer) && i > -1 }
  result = []
    until result.size == s
	  num = 11 if num < 10
      result << num if num.to_s == num.to_s.reverse
      num+=1
    end
  result
end

Before refactoring code 1:
def palindrome(num,s)
  return 'Not valid' if !num.is_a?(Integer) || !s.is_a?(Integer) || num.negative? || s.negative?
  result = []
    until result.size == s
	  num = 11 if num < 10
      result << num if num.to_s == num.to_s.reverse
      num+=1
    end
  result
end
=end