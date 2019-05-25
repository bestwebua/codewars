=begin
Are the brackets balanced? by Vladislav Trotsenko.

Given a string which may include opening or closing round brackets, can you tell whether the string
contains a balanced pair(s) of round brackets, that is there are no brackets which are either opened
& not closed, or vice versa. Opening round brackets always have to come before closing bracket.
An empty string is balanced.
=end

def isBalanced(string)
  stack = []
    string.each_char do |brace|
      case brace
        when '(' then stack << brace
        when ')' then return false if stack.pop != '('
      end
    end
  stack.empty?
end

isBalanced('(abc)')