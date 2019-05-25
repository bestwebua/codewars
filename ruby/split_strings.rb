=begin
Split Strings by Vladislav Trotsenko.

Complete the solution so that it splits the string into pairs of two characters.
If the string contains an odd number of characters then it should replace the
missing second character of the final pair with an underscore ('_').

Examples:
solution('abc') # should return ['ab', 'c_']
solution('abcdef') # should return ['ab', 'cd', 'ef']
=end

def solution(str)
	str.scan(/..?/).map { |item| item.size < 2 ? (item << '_') : item }
end

solution('abc')

=begin
Super refactoring code:
def solution str
  (str + '_').scan /../
end
=end