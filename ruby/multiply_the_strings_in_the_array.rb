=begin
Multiply the strings in the array by Vladislav Trotsenko.

You received an array with two strings. Create a function that
will return their product as a string. E.g.

arrMultiply(['9','6']) should return '54'
=end

def arrMultiply(arr)
  arr.map(&:to_i).inject(:*).to_s
end