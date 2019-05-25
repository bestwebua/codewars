# Sum Mixed Array by Vladisalv Trotsenko
# https://www.codewars.com/kata/57eaeb9578748ff92a000009
#
# Given an array of integers as strings and numbers,
# return the sum of the array values as if all were numbers.
# Return your answer as a number.

def sum_mix(x)
  x.map(&.to_i).sum
end
