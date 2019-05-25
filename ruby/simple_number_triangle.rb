=begin
Simple number triangle by Vladislav Trotsenko.

Consider the number triangle below, in which each number is equal
to the number above plus the number to the left. If there is no
number above, assume the number above is a 0.

1
1 1
1 2 2
1 3 5 5
1 4 9 14 14

The triangle has 5 rows and the sum of the last row is sum([1,4,9,14,14]) = 42.
You will given an integer n and your task will be to return the sum of the last
row of a triangle of n-rows.

In the example above:
solve(5) = 42.
=end

def solve(n)
  result = Array.new(n) { [1] }
    result.each.with_index do |item, index|
      row, pred_row = result[index], result[index-1]
        0.upto(index-1) do |subindex|
          row << (pred_row[subindex+1].nil? ? row[subindex] : row[subindex] + pred_row[subindex+1])
        end if index.nonzero?
    end
  result.last.inject(:+)
end

solve(5)

=begin
# Double for solution
def solve(n)
  result = Array.new(n) { |item| [1] }
    for i in 1...n
      row, pred_row = result[i], result[i-1]
        for index in 0...i
          row << (pred_row[index+1].nil? ? row[index] : row[index] + pred_row[index+1])
        end
    end
  result[-1].inject(:+)
end
=end