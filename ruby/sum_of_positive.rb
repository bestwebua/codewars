=begin
Sum of positive by Vladislav Trotsenko.

You get an array of numbers, return the sum of all of the positives ones.
Example [1,-4,7,12] => 1 + 7 + 12 = 20
Note: array may be empty, in this case return 0.
=end

def positive_sum(arr)
  arr.select(&:positive?).inject(0, :+)
end

positive_sum([1,-4,7,12])

=begin
Before refactoring:
def positive_sum(arr)
  arr.all?(&:negative?) || arr.empty? ? 0 : arr.select(&:positive?).inject(:+)
end
=end