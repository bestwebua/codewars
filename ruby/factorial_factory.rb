=begin
Factorial Factory by Vladislav Trotsenko.

In mathematics, the factorial of integer 'n' is written as 'n!'. It is equal to the product of n and every
integer preceding it. For example: 5! = 1 x 2 x 3 x 4 x 5 = 120

Your mission is simple: write a function that takes an integer 'n' and returns 'n!'.
You are guaranteed an integer argument. For any values outside the positive range,
return null, nil or None.

Note: 0! is always equal to 1. Negative values should return null; 
=end

def factorial(n)
 n.zero? ? 1 : (1..n).inject(:*)
end

factorial(3000)