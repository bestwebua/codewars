=begin
Remove Duplicates by Vladislav Trotsenko.

You are to write a function called unique that takes an array of integers and returns
the array with duplicates removed. It must return the values in the same order as
first seen in the given array. Thus no sorting should be done, if 52 appears before 10
in the given array then it should also be that 52 appears before 10 in the returned array.

[5, 2, 2, 1, 3] => [5, 2, 1, 3]
=end

def unique(integers)
  uniq = []
  integers.each { |i| uniq << i unless uniq.include?(i) }
  uniq
end

unique([5, 2, 2, 1, 3])

=begin
Super refactoring code:
def unique(integers)
  integers & integers
end
=end