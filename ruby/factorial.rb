=begin
Factorial by Vladislav Trotsenko.

Yor task is to write function factorial.
=end

def factorial(n)
  (1..n).inject(1, :*)
end

factorial(100)