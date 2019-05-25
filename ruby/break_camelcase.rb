=begin
Break camelCase by Vladislav Trotsenko.

Complete the solution so that the function will break up camel casing,
using a space between words.

Example:
solution('camelCasing') # => should return 'camel Casing'
=end

def solution(string)
  string.chars.map { |i| i == i.upcase ? " #{i}" : i }.join
end

solution('ololoHello')


=begin
Before refactoring code:
def solution(string)
  string.chars.map { |i| i == i.upcase ? i = ' ' << i : i }.join
end

Super refactoring  code #2:
def solution(string)
  string.gsub(/([A-Z])/, ' \1')
end
=end