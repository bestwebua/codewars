=begin
Power of 4 by Vladisalv Trotsenko.

Write a method that returns true if a given parameter is a power of 4, and false if it's not.
If parameter is not an Integer (eg String, Array) method should return false as well.
(In C# Integer means all integer Types like Int16,Int32,.....)

power_of_4(1024)   => true
power_of_4(55)     => false
power_of_4("Four") => false

Multiples of 4 are any integer that is divisible by 4 without residue. Powers of 4 are any integer
that is a power of 4. That is to say that all powers of 4 are multiples of 4 (f(x) = 4x, {x >= 1},
doesn't hold true where x <= 0), but not all multiples of 4 are powers of 4.

4 * 4 = 16 (multiple)
4 ^ 2 = 16 (power)

4 * 5 = 20 (multiple)
4 ^ 3 = 64 (power)

4 in 0 = 1 ∴ power_of_4: 1 ↦ true
=end

def power_of_4(number)
  if number.is_a?(Fixnum) && number>0
    number==1 || (number%4==0 && number/4%4==0) ? true : false
  else false; end
end

power_of_4(17)