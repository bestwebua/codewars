=begin
Regexp Basics - is it a digit? by Vladislav Trotsenko.

Implement String#digit? (in Java StringUtils.isDigit(String)),
which should return true if given object is a digit (0-9), false otherwise.
=end

class String
  def digit?
    !!self[/\A\d\z/]
  end
end

'1'.digit?

=begin
Before refactoring code 1:
class String
  def digit?
    size == 1 && scan(/\d/).one?
  end
end
Before refactoring code 2:
class String
  def digit?
    self.size == 1 && self.scan(/\d/).one?
  end
end
Super refactoring code:
class String
  def digit?
    !!self[/\A\d\z/]
  end
end
=end