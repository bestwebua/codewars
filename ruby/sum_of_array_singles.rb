=begin
Sum of array singles by Vladislav Trotsenko.

In this Kata, you will be given an array of numbers in which two
numbers occur once and the rest occur only twice. Your task will
be to return the sum of the numbers that occur only once.

For example, repeats([4,5,7,5,4,8]) = 15 because only the numbers
7 and 8 occur once, and their sum is 15.
=end


def repeats(arr)
  arr.select { |i| arr.count(i) < 2 }.inject(:+)
end

repeats([4,5,7,5,4,8])

=begin
#before refactoring code:
def repeats(arr)
  arr.group_by(&:itself).select { |k, v| v.size < 2 }.keys.inject(:+)
end
=end