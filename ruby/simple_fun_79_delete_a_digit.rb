=begin
Simple Fun #79: Delete a Digit by Vladislav Trotsenko.

Given an integer n, find the maximal number you can obtain by deleting exactly
one digit of the given number.

Example:
For n = 152, the output should be 52;
For n = 1001, the output should be 101.

Input/Output:
[input] integer n
Constraints: 10 ≤ n ≤ 1000000.
[output] an integer
=end

def delete_digit(n)
  n = n.to_s.chars.map(&:to_i)
    n.delete_if { |i| i.zero? } and n.push(0) if n.include?(0)
end

delete_digit(1001)