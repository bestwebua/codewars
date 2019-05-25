=begin
Numerical Palindrome #3 by Vladislav Trotsenko.

A palindrome is a word, phrase, number, or other sequence of characters which
reads the same backward as forward. Examples of numerical palindromes are:

2332
110011
54322345

For a given number num, write a function which returns the number of numerical
palindromes within each number. For this kata, single digit numbers will NOT
be considered numerical palindromes.

Return "Not valid" if the input is not an integer or is less than 0.
=end

def palindrome(num)
return 'Not valid' unless num.is_a?(Integer) && num > 0
  result, first, last = [], 0, 0
    num = num.to_s.chars
      (num.size).times do
        until last == num.size
    	  palindrome = num[first..last].join
    	    result << palindrome if palindrome.size > 1 && palindrome == palindrome.reverse
    	  last+=1
    	end
      first+=1; last = first
	  end
  result.size
end

palindrome(10015885)

=begin
Super refactoring code:
def palindrome(num)
return 'Not valid' unless num.is_a?(Integer) && num.positive?
  digits = num.to_s.chars
    (2..digits.size).flat_map { |size| digits.each_cons(size).to_a }
                  	.count { |digs| digs == digs.reverse }
end
=end