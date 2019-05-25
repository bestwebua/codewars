=begin
Convert boolean values to strings 'Yes' or 'No' by Vladislav Trotsenko.

Complete the bool_to_word method.
Given: a boolean value
Return: a 'Yes' string for true and a 'No' string for false
=end

def bool_to_word(bool)
  bool ? 'Yes' : 'No'
end

bool_to_word(true)

=begin
def bool_to_word(bool)
  bool == true ? 'Yes' : 'No'
end
=end