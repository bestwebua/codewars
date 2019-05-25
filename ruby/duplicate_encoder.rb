=begin
Duplicate Encoder by Vladislav Trotsenko.

The goal of this exercise is to convert a string to a new string
where each character in the new string is '(' if that character
appears only once in the original string, or ')' if that character
appears more than once in the original string.

Ignore capitalization when determining if a character is a duplicate.

Examples:
"din" => "((("
"recede" => "()()()"
"Success" => ")())())"
"(( @" => "))((" 
=end

def duplicate_encode(word)
  word.downcase!
  word.chars.map { |char| word.count(char) > 1 ? ')' : '(' }.join
end

duplicate_encode('Success')

=begin
def duplicate_encode(word)
  word.downcase.gsub(/./) { |char| word.downcase.count(char) > 1 ? ')' : '(' }
end
=end