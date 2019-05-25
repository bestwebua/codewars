=begin
Shortest Word by Vladislav Trotsenko.

x Simple, given a string of words, return the length of the shortest word(s).
String will never be empty and you do not need to account for different data types.
=end

def find_short(s)
  s.split.map(&:size).min
end

=begin
Before refactoring code:
def find_short(s)
  s.split(" ").group_by(&:length).min.first
end
=end