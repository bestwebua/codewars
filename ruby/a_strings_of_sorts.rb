=begin
A String of Sorts
https://www.codewars.com/kata/a-string-of-sorts/ruby

Define a method that accepts 2 strings as parameters. The method returns the first string sorted by the second.

sort_string('foos', 'of')
# => 'oofs'

sort_string('string', 'gnirts')
# => 'gnirts'

sort_string('banana', 'abn')
# => 'aaabnn'

To elaborate, the second string defines the ordering. It is possible that in the second string characters repeat,
so you should remove repeating characters, leaving only the first occurrence.

Any character in the first string that does not appear in the second string should be sorted to the end of the
result in original order.
=end

def sort_string(str, ordering)
  str.chars.sort_by { |item| ordering.index(item) || ordering.size }.join
end
