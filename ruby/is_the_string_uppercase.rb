=begin
Is the string uppercase? by Vladislav Trotsenko.
Create a method is_uppercase() to see whether the string is ALL CAPS.
=end

class String
  def is_upcase?
    self == upcase
  end
end

'test'.is_upcase?