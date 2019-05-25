=begin
Unlimited Sum by Vladislav Trotsenko.

Write a function sum that accepts an unlimited number of integer arguments, and adds
all of them together. The function should reject any arguments that are not integers,
and sum the remaining integers.

sum(1,2,3) # => 6
=end

def sum (*args)
  args.grep(Integer).inject(:+)
end

=begin
Super refatoring code:
def sum(*args)
  args.select { |i| i.is_a?(Fixnum) }.reduce(:+)
end
=end