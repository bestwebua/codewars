=begin
Array of all primes up to number N by Vladislav Trotsenko.

Code a function which will return an array with all prime numbers smaller
than or equal to an arbitrary parameter "n".

Assume that all parameters will be numbers. Remember that in some test cases
with a big enough "n", performance might be (more) important.
=end

require 'prime'
def prime_array(n)
  Prime.entries(n)
end

=begin
require 'prime'
def prime_array(n)
  (0..n).select(&:prime?)
end
=end