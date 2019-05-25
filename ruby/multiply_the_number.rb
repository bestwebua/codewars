=begin
Multiply the number by Vladislav Trotsenko.

Jack really likes his number five: the trick here is that you have to multiply
each number by 5 raised to the number of digits of each numbers, so, for example:

multiply(3)==15
multiply(10)==250
multiply(200)==25000
multiply(0)==0
multiply(-3)==-15
=end

def multiply(n)
  lenght = n.to_s.size
  n.positive? ? lenght.times { n*=5 } : (lenght-1).times { n*=5 }
  n
end

multiply(-20)

=begin
Super refactoring code:
def multiply(n)
  5 ** n.abs.to_s.length * n
end
=end