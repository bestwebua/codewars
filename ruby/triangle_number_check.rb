=begin
Triangle number check by Vladislav Trotsenko.


Description:

A triangle number is a number where n objects form an equilateral
triangle (it's a bit hard to explain). For example, 6 is a
triangle number because you can arrange 6 objects into an
equilateral triangle:

  1
 2 3
4 5 6

8 is not a triangle number because 8 objects do not form an
equilateral triangle:

   1
  2 3
 4 5 6
7 8

In other words, the nth triangle number is equal to the sum of
the n natural numbers from 1 to n.
Your task:

Check if a given input is a valid triangle number. Return true
if it is, false if it is not (note that any non-integers,
including non-number types, are not triangle numbers).

You are encouraged to develop an effective algorithm: test
cases include really big numbers.
=end

def isTriangleNumber(n)
  n.is_a?(Integer) ? (0..n).map { |i| i*(i+1)/2 }.include?(n) : false
end

isTriangleNumber(8)
