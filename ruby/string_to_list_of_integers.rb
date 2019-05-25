=begin
String to list of integers by Vladislav Trotsenko.

Given a string containing a list of integers separated by commas,
write the function string_to_int_list(s) that takes said string and returns
a new list containing all integers present in the string, preserving the order.

For example, give the string "1,2,3,4,5", the function string_to_int_list()
should return [1,2,3,4,5]
=end

def string_to_int_list(s)
  s.scan(/-?\d+/).map(&:to_i)
end

string_to_int_list('1,,,-2,3,4,5')

=begin
Before refactoring:
def string_to_int_list(s)
  s.split(%r{,\s*}).reject(&:empty?).map(&:to_i)
end
=end