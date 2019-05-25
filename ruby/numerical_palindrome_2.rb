=begin
Numerical Palindrome #2 by Vladislav Trotsenko.

A palindrome is a word, phrase, number, or other sequence of characters which
reads the same backward as forward. Examples of numerical palindromes are:

2332
110011
54322345

For this kata, single digit numbers will not be considered numerical palindromes.

For a given number num, write a function to test if the number contains a numerical
palindrome or not and return a boolean (true if it does and false if does not).
Return "Not valid" if the input is not an integer or is less than 0.

Note: Palindromes should be found without permutating num. 
=end



def palindrome(num)
return 'Not valid' unless num.is_a?(Integer) && num.positive?
  !num.to_s.chars.group_by(&:itself).values.select { |i| i.size > 1}.empty?
end

palindrome(121534523572837598179124101003412412478672227587978345)


=begin
Some version with each_cons method:
def palindrome(num)
return 'Not valid' if !num.is_a?(Integer) || num < 0
  num.to_s.chars.each_cons(3) do |a, b, c|
    if a == b || a == c || b == c
      true
    else
      false
    end
  end
end
=end