=begin
Fix the Bugs (Syntax) by Vladislav Trotsenko.

In this Kata you should fix/create a program that returns the following
values:

false if either a or b (or both) are not numbers
a % b plus b % a if both arguments are numbers
=end

def my_first_kata(a, b)
  a%b+b%a rescue false
end

p my_first_kata(1, 'a')

=begin
Before refactoring code:
def my_first_kata(a, b)
  a.is_a?(Fixnum) && b.is_a?(Fixnum) ? a%b+b%a : false
end

def my_first_kata(a, b)
  [a, b].all? { |i| i.respond_to?(:to_int) } ? a%b+b%a : false
end
=end