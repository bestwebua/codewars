=begin
N-th Fibonacci by Vladislav Trotsenko.

I would like for you to write me a function that when given a number (n)
returns the n-th number in the Fibonacci Sequence.

For example:
nth_fibonacci(4) == 2

Because 2 is the 4th number in the Fibonacci Sequence. For reference, the first
two numbers in the Fibonacci sequence are 0 and 1, and each subsequent number
is the sum of the previous two.
=end

def nth_fibonacci(n)
  fib, step = [0, 1], 0
    case n
      when 1 then fib.pop
      when 2 then fib.unshift
      else
        loop do
          fib << fib.last(2).inject(:+)
          step+=1
    	break if step==n-2; end
    end   
fib.last
end

nth_fibonacci(100000)