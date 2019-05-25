=begin
Love vs friendship by Vladislav Trotsenko.

If　a = 1, b = 2, c = 3 ... z = 26
Then l + o + v + e = 54
and f + r + i + e + n + d + s + h + i + p = 108
So friendship is twice stronger than love :-)

The input will always be in lowercase and never be empty.
=end

def words_to_marks(string)
  string.chars.map { |char| ('a'..'z').to_a.index(char) + 1 }.inject(:+)
end

words_to_marks('aaa')

=begin
#Before refactoring code:
def words_to_marks(string)
  dict, result = ('a'..'z').map.with_index { |item, index| [item, index+1] }.to_h, 0
    string.each_char { |char| result+=dict[char] }
  result
end
=end