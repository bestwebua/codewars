=begin
All Star Code Challenge #28 by Vladislav Trotsenko.

Create a function called convertCF() that accepts 2 arguments, an integer
of the temperature, and a string of length 1 ("c" or "f") denoting which
scale the integer should be converted to (Celsius and Fahrenheit, respectively).

The function should return a number, which is the conversion from one scale to the other.
By default, the conversion should convert to Celsius if a 2nd argument is not provided;
in Python, Ruby and Crystal round up to the first digit.

convert_c_f(60, "f"); # 140
convert_c_f(32, "c"); # 0
convert_c_f(50); # 10
convert_c_f(100, "w"); # Error

Note: If the 2nd argument provided is NOT "c" or "f", an error should be thrown.
The conversion should work with negative numbers, too.
=end

def convert_c_f(num, scale='c')
  abort 'Error' unless scale[/^[cf]$/]
  (scale == 'f' ? num*(9.0/5.0)+32 : (num-32)*5.0/9.0).round
end

convert_c_f(60)

=begin
Before refactoring code:
def convert_c_f(num, scale='default')
  result = case scale
    when 'c', 'default' then (num-32)*5.0/9.0
    when 'f' then num*(9.0/5.0)+32
    else abort; end
  result.round
end
#var[/^[ab]$/i] means that var.include? 'a' or 'b'
#with case-insensitivity ('a', 'A', 'b', 'B').
=end