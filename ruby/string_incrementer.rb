=begin
String incrementer by Vladislav Trotsenko.

Your job is to write a function which increments a string, to create a new string.
If the string already ends with a number, the number should be incremented by 1.
If the string does not end with a number the number 1 should be appended to the
new string.

Examples:
foo -> foo1
foobar23 -> foobar24
foo0042 -> foo0043
foo9 -> foo10
foo099 -> foo100

Attention: If the number has leading zeros the amount of digits should be considered.
=end

def increment_string(input)
  input.sub(/\d*\z/) { |char| char.empty? ? 1 : char.next }
end

increment_string('test1')

=begin
def increment_string(input)
  input[/\d\z/] ? input.sub(/(\d+)\z/) { $1.next } : input + '1'
end

def increment_string(input)
  pattern = /(.*\D)(\d+)?/
    if !input[/\d+/].nil? && input.size == input[/\d+/].size
      input.next
    else
      input[/#{pattern}/,2].nil? ? input << '1' : input[/#{pattern}/,1] + input[/#{pattern}/,2].next
    end
end
=end