=begin
Square(n) Sum by Vladislav Trotsenko.

Complete the squareSum method so that it squares each number passed
into it and then sums the results together.

squareSum([1, 2, 2]) # should return 9
=end

def squareSum(numbers)
  numbers.inject { |sum, i| sum += i*i }
end

squareSum([1, 2, 2])

=begin
def squareSum(numbers)
  numbers.map { |i| i*i }.inject(:+)
end

def squareSum(numbers)
  numbers.map { |i| i*i }.reduce(:+)
end

def squareSum(numbers)
  result = 0
  numbers.each { |i| result += i*i } and result
end

In Ruby 2.4 we can use .sum method :)
def squareSum(numbers)
  numbers.sum { |i| i*i }
end
=end