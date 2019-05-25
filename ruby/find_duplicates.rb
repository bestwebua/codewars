=begin
Find Duplicates by Vladislav Trotsenko.

Given an array, find the duplicates in that array, and return a new array of those duplicates.

[1, 1, 1, 2, 3, 4, 5] => 1
=end

def duplicates(arr)
  arr.select { |i| arr.count(i) > 1 }.uniq
end

duplicates([1, 1, 1, 2, 3, 4, 5])

=begin
Before refactoring code:
def duplicates(arr)
  ununiq = []
  arr.each { |i| ununiq << i if arr.count(i) > 1 && !(ununiq.include?(i)) }
  ununiq
end
=end