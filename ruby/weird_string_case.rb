=begin
WeIrD StRiNg CaSe by Vladislav Trotsenko.

Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same
string with all even indexed characters in each word upper cased, and all odd indexed
characters in each word lower cased. The indexing just explained is zero based, so the
zero-ith index is even, therefore that character should be upper cased.

The passed in string will only consist of alphabetical characters and spaces(' '). Spaces
will only be present if there are multiple words. Words will be separated by
a single space(' ').

Examples:
weirdcase( "String" )#=> returns "StRiNg"
weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"
=end

def weirdcase(string)
  string.split.map { |word| word.chars.map.with_index { |char, index| index.even? ? char.upcase : char.downcase }.join }.join(' ')
end

weirdcase('Text here...')

=begin
def weirdcase(string)
  string.gsub(/(\w{1,2})/) { |s| $1.capitalize }
end

def weirdcase(string)
  string.scan(/\w\w?| /).map(&:capitalize).join
end
=end