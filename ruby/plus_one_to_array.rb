=begin
+1 Array by Vladislav Trotsenko.

Given an array of integers of any length, return an array that has 1 added to the value represented
by the array.

For example an array [2, 3, 9] equals 239, add one would return an array [2, 4, 0].
[4, 3, 2, 5] would return [4, 3, 2, 6]

The array can't be empty and only positive, single digit integers are allowed. The function should
return null if the array is empty or any of the array values are negative or more than 9.

[1, -9] would return null/nil/None (according to the language implemented).
=end

def up_array(arr)
  arr.all? { |i| i.between?(0, 9) && !i.negative? } && arr.size>0 ? arr.join.next.chars.map(&:to_i) : nil
end

up_array([1, 0, 0, 0])

=begin
def up_array(arr)
  arr.all? { |i| i.between?(0, 9) && !i.negative? } && arr.size>0 ? (arr.join.to_i+1).to_s.chars.map(&:to_i) : nil
end

def up_array(arr)
  return nil if arr.empty? || !arr.any? { |i| i.between?(0, 9) }
  arr.join.next.chars.map(&:to_i)
end
=end