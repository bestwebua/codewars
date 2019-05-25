=begin
Numerical Palindrome #5 by Vladislav Trotsenko.

A palindrome is a word, phrase, number, or other sequence of characters which reads
the same backward as forward. Examples of numerical palindromes are:

2332
110011
54322345

For a given number num, write a function to test if the number can be rearranged to
form a numerical palindrome or not and return a boolean (true if it can and false if
it cannot). For this kata, single digit numbers will NOT be considered numerical
palindromes.

Return "Not valid" if the input is not an integer or is less than 0.
=end

def palindrome(num)
  return 'Not valid' unless num.is_a?(Integer) && num.positive?
    num = num.to_s.chars
  num.size > 1 && !num.permutation(num.size).find { |i| i.join == i.join.reverse }.nil? ? true : false
end

palindrome(5)



=begin
Test case:
describe "Random tests" do
  Test.random_number.times do
    num = rand(0..100000)
      def validator(num)
  	  return 'Not valid' unless num.is_a?(Integer) && num.positive?
    	num = num.to_s.chars
  		num.size > 1 && !num.permutation(num.size).find { |i| i.join == i.join.reverse }.nil? ? true : false
	  end
    Test.assert_equals(palindrome(num), validator(num))
  end
end
=end