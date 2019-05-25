=begin
Alternate case by Vladislav Trotsenko.

altERnaTIng cAsE <=> ALTerNAtiNG CaSe
=end

class String
  def to_alternating_case
    swapcase
  end
end

'heLLo'.to_alternating_case

=begin
Before refactoring code:
class String
  def to_alternating_case
    chars.map { |i| i == i.upcase ? i.downcase : i.upcase }.join
  end
end

class String
  def to_alternating_case
    tr("a-zA-Z", "A-Za-z") 
  end
end

class String
  alias :to_alternating_case :swapcase
end
=end