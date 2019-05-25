=begin
Multiplication Tables by Vladislav Trotsenko.

Create a function that accepts dimensions, of Rows x Columns, as
parameters in order to create a multiplication table sized according
to the given dimensions. **The return value of the function must be
an array, and the numbers must be Fixnums, NOT strings.

Example:
multiplication_table(3,3)

1 2 3
2 4 6
3 6 9

-->[[1,2,3],[2,4,6],[3,6,9]]
Each value on the table should be equal to the value of multiplying
the number in its first row times the number in its first column.
=end

def multiplication_table(rows, columns)
  (1..rows).map { |row| (1..columns).map { |column| row*column } }
end

multiplication_table(4,4)

=begin
#Before refactoring code:
def multiplication_table(*args)
  rows, columns = args
    matrix = (1..rows).to_a.product
      matrix.map.with_index do |row, index|
      step = row[0]
        (step..step*columns).select { |number| (number%step).zero? }.each do |item|
          row << item unless item == step
        end
      end
  matrix
end
=end