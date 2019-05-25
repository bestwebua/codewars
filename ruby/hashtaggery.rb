=begin
Hashtaggery by Vladislav Trotsenko.

Define a new instance method on the Ruby string class called hashtags.
It returns an array of all alphanumeric hashtagged words in a string.
A string with no hashtagged words should return an empty array.

Character case sensitivity is not important in this kata.
'this #word is #hashtagged'.hashtags => ['#word', '#hashtagged']
=end

class String
  def hashtags
    scan(/#\w+/)
  end
end

'this #word is #hashtagged'.hashtags

=begin
Before refactoring code:
class String
  def hashtags
    self.scan(/#\w+/)
  end
end

class String
  def hashtags
    self.include?('#') ? self.scan(/#\w+/) : []
  end
end
=end