=begin
Get the Mean by Vladislav Trotsenko.

Create a function that calculates the mean of a series of numbers.
Series may include one or more numbers.
=end


require 'mathn'
def calculateMean(*nums)
  result = nums.inject(:+)/nums.size
  result.is_a?(Fixnum) ? result : result.to_f.round(2)
end

calculateMean(1, 2, 3, 4, 5, 6, 42, 19)

=begin
def calculateMean(*nums)
  nums.inject(:+).fdiv(nums.size)
end

def calculateMean(*nums)
  nums.inject(:+)/nums.size.to_f
end
=end