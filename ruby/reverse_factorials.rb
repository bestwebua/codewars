=begin
Reverse Factorials by Vladislav Trotsenko.

I'm sure you're familiar with factorials – that is, the product of an integer and all the
integers below it.

For example, 5! = 120, as 5*4*3*2*1 = 120.

Your challenge is to create a function that takes any number and returns the number that
it is a factorial of. So, your function would take in 120 and return 5!.

Of course, not every number is a factorial of another. In this case, your function would
return 'None'.

So, 120 will return 5! 24 will return 4! 150 will return 'None'.
=end

def reverse_factorial(num)
  n = factorial = 0
    n+=1 and factorial = (1..n).inject(1, :*) while factorial < num
  num == factorial ? "#{n}!" : 'None'
end

p reverse_factorial(120)

=begin
Before refactoring code:
def reverse_factorial(num)
  n = factorial = 0
    until factorial >= num
      n+=1; factorial = (1..n).inject(1, :*)
    end
  num == factorial ? "#{n}!" : 'None'
end

Super refactoring code:
def reverse_factorial(num)
  "#{(1..num).find{|i|return 'None' unless num%i==0;(num/=i)==1}}!"
end
=end