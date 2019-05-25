=begin
Valid Parentheses by Vladislav Trotsenko.
=end

def valid_parentheses(string)
  l_brace, stack = '(', []
    string.each_char do |brace|
      case brace
    	when '(' then stack << brace
    	when ')' then return false unless stack.pop == l_brace
      end; end
  stack.empty?
end

valid_parentheses('(abc)')