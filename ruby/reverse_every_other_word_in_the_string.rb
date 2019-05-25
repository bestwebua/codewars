=begin
Reverse every other word in the string

Reverse every other word in a given string, then return the string.
Throw away any leading or trailing whitespace, while ensuring there
is exactly one space between each word. Punctuation marks should be
treated as if they are apart of the word in this kata.
=end

def reverse_alternate(string)
  string.split.map.with_index { |item, index| index.odd? ? item.reverse : item }.join(' ')
end
