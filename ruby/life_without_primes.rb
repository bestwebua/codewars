=begin
Life without primes by Vladislav Trotsenko.

Consider an array that has no prime numbers, and none of its elements
has any prime digit. It would start with: [1,4,6,8,9,10,14,16,18,..].

The element at index 1 is 4.
12 and 15 are not in the list because 2 and 5 are primes.

You will be given an integer n and your task will be return the number
at that index in the array. For example, solve(1) = 4, as explained
above.

More examples in the test cases.
=end

require 'prime'

def solve(n)
  (1..1/0.0).lazy.reject { |i| i.prime? || !(i.to_s !~ /[2357]/) }.drop(n).next
end

solve(10)

=begin
#before refactoring code2:
def solve(n)
  (1..Float::INFINITY).lazy.reject { |i| i.prime? || !(i.to_s !~ /[2357]/) }.drop(n).next
end

#before refactoring code1:
require 'prime'
def solve(n)
  number, index = 1, -1
    loop do
      index+=1 unless number.prime? || !(number.to_s !~ /[2357]/)
        break if index == n
      number+=1
    end
  number
end
=end