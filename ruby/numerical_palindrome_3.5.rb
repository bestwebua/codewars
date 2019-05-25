=begin
Numerical Palindrome #3.5 by Vladislav Trotsenko.

A palindrome is a word, phrase, number, or other sequence of characters which
reads the same backward as forward. Examples of numerical palindromes are:

2332
110011
54322345

For a given number num, write a function which returns an array of all the
numerical palindromes contained within each number. The array should be sorted
in ascending order and any duplicates should be removed.

For this kata, single digit numbers and numbers which start and end with 0s
(such as 010 and 000) will NOT be considered valid numerical palindromes.

If num contains no valid palindromes, return "No palindromes found".
Otherwise, return "Not valid" if the input is not an integer or is less than 0.
=end

def palindrome(num)
return 'Not valid' unless num.is_a?(Integer) && num > 0
  result, first, last = [], 0, 0
    num = num.to_s.chars
      (num.size).times do
        until last == num.size
    	  palindrome = num[first..last].join
    	    result << palindrome.to_i if !palindrome[/\A[0]\d+\z/] && palindrome.size > 1 && palindrome == palindrome.reverse
    	  last+=1
    	end
      first+=1; last = first
	  end
  result.empty? ? 'No palindromes found' : result.uniq.sort
end

palindrome(1002001)