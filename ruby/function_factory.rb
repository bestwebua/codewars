=begin
Function-Factory by Vladislav Trotsenko.

As a programmer, you get paid for writing code. You are basically a code
factory - money in, code out.

But as a programmer you are also quite lazy.

One day you decide that you want to create a program that does your job
for you, so you can go online and solve more Katas on Codewars.

Create a function functionFactory that takes three parameters (x, y, operator)
and returns the function that can calculate the result.
=end

def function_factory(x,y,o)
  [x,y].all? { |i| i.is_a?(Numeric) } ? eval("#{x} #{o} #{y}") : 'Error'
end

function_factory(1,4,'%')