=begin
Matrix Addition by Vladislav Trotsenko

Write a function that accepts two square matrices (nxn two dimensional arrays),
and return the sum of the two. Both matrices being passed into the function will
be of size nxn (square), containing only integers.

How to sum two matrices:
Take each cell [n][m] from the first matrix, and add it with the [n][m] cell from
the second matrix. This will be cell [n][m] in the solution matrix.	

Example function call:
matrixAddition( [ [1, 2, 3], [3, 2, 1,], [1, 1, 1] ], [ [2, 2, 1], [3, 2, 3], [1, 1, 3] ] );
returns [ [3, 4, 4], [6, 4, 4], [2, 2, 4] ]

=end

require 'matrix'
def matrixAddition(a, b)
  (Matrix[*a] + Matrix[*b]).to_a
end

matrixAddition([[1, 2], [1, 2]], [[2, 3], [2, 3]])


=begin
Super refactoring code:

require 'matrix'
def sum_arrays(*a)
  return *a.map {|m| Matrix[*m] }.reduce(:+)
end

or solution without class Matrix

def matrixAddition(a, b)
  a.each_index do |index|
    a[index].each_index do |i|
      a[index][i] += b[index][i]
    end
  end
  return a
end

=end