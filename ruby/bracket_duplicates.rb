=begin
Bracket Duplicates by Vladislav Trotsenko.

Create a program that will take in a string as input and, if there are duplicates
of more than two alphabetical characters in the string, returns the string with
all the extra characters in a bracket.

For example, the input "aaaabbcdefffffffg" should return "aa[aa]bbcdeff[fffff]g"

Please also ensure that the input is a string, and return "Please enter a valid string"
if it is not.
=end

def string_parse(string)
  return 'Please enter a valid string' unless string.instance_of?(String)
  result = ''
  count = 0
  arr = string.chars
    arr.each_with_index do |item, index|
  	  next_item = arr[index+1]
  	  result += item
  	  count += 1
  	    case
  	      when count <= 2 && item != next_item then count = 0
  	      when count == 2 && item == next_item then result += '['
  	      when item != next_item then result += ']' and count = 0
  	    end
    end
  result
end

string_parse('aaaaabbcdefffffffg')

=begin
Super refactoring code:
def string_parse(string)
  string.gsub /(.)\1(\1+)/, '\1\1[\2]' rescue 'Please enter a valid string'
end
=end