=begin
Split odd and even by Vladislav Trotsenko.

Complete function `splitOddAndEven`, accept a number `n`(n>0),
return an array that contains the continuous parts of odd or
even digits.

Please don't think about digit `0`, it won't appear.
=end

def split_odd_and_even(n)
  n.to_s.chars.map(&:to_i).chunk(&:odd?).map { |i| i[1].join.to_i }
end

split_odd_and_even(112)