=begin
The alphabetized kata by Vladisalv Trotsenko.
https://www.codewars.com/kata/alphabetized/ruby

Re-order the characters of a string, so that they are
concatenated into a new string in
"case-insensitively-alphabetical-order-of-appearance"
order. Whitespace and punctuation shall simply be removed!

The input is restricted to contain no numerals and only
words containing the english alphabet letters.

Example:
alphabetized("The Holy Bible") # "BbeehHilloTy"
=end

def alphabetized(str)
  str.scan(/[a-z]/i).sort_by { |i| i.upcase && i.downcase }.join
end

def alphabetized(str)
  str.scan(/[a-z]/i).sort(&:casecmp).join
end

alphabetized('The Holy Bible')
