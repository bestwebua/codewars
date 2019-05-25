=begin
Identify Case by Vladislav Trotsenko.

So the task here is to implement a function that takes a string,
c_str, and returns a string with the case the input is in. The
possible case types are “kebab”, “camel”, and ”snake”. If none
of the cases match with the input, or if there are no 'spaces'
in the input (for example in snake case, spaces would be '_'s),
return “none”. Inputs will only have letters (no numbers or
special characters).
Some definitions

Kebab case: lowercase-words-separated-by-hyphens
Camel case: lowercaseFirstWordFollowedByCapitalizedWords
Snake case: lowercase_words_separated_by_underscores
=end
class String
  def kebabcase?
    arr = self.split('-')
    arr.size > 1 ? arr.all? { |i| i == i.downcase && !i.empty? && i !~ /_/ } : false
  end
  def snakecase?
    arr = self.split('_')
    arr.size > 1 ? arr.all? { |i| i == i.downcase && !i.empty? && i !~ /-/ } : false
  end
  def camelcase
    self.split(/(?=[A-Z])/).join
  end
  def camelcase?
    self !~ /-|_| / && self == self.camelcase
  end
end

def id(c_str)
  result = case
      when c_str.kebabcase? then 'kebab'
      when c_str.snakecase? then 'snake'
      when c_str.camelcase? then 'camel'
      else 'none'
    end
  result
end

p id('hello-world')

=begin
#Super refactoring code:
def id(c_str)
  case c_str
    when /\A(?:[a-z]|(?<=[a-z])-)+\z/     then 'kebab'
    when /\A(?:[a-z]|(?<=[a-z])_)+\z/     then 'snake'
    when /\A(?:[a-z]|(?<=[a-z])[A-Z])+\z/ then 'camel'
    else "none"
  end
end

def id(c_str)
  case c_str
    when /^[a-z]+-[a-z]+(-[a-z]+)*[a-z]+$/ then 'kebab'
    when /^[a-z]+_[a-z]+(_[a-z]+)*[a-z]+$/ then 'snake'
    when /^([a-z]+[A-Z]+)+[a-z]*$/ then 'camel'
    else 'none'
  end
end
=end