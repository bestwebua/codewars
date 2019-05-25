=begin
Pyramid Array by Vladislav Trotsenko.

Write a function that when given a number >= 0,
returns an Array of ascending length subarrays.

pyramid(0) => [ ]
pyramid(1) => [ [1] ]
pyramid(2) => [ [1], [1, 1] ]
pyramid(3) => [ [1], [1, 1], [1, 1, 1] ]
=end

def pyramid(numbers)
  (1..numbers).map { |i| [1]*i }
end

pyramid(3)

=begin
#before refactoring code:
def pyramid(numbers)
  return [] if numbers.zero?
    arr = []
      for i in 1..numbers do
        subarr = []
          i.times { subarr << 1 }
        arr << subarr.clone
      end
    arr
end 
=end