=begin
Sum of Digits / Digital Root by Vladislav Trotsenko.

You must create a digital root function.
A digital root is the recursive sum of all the digits in a number.
Given n, take the sum of the digits of n.
If that value has two digits, continue reducing in this way until a single-digit number is produced.
This is only applicable to the natural numbers.

Here's how it works (Ruby example given):
digital_root(16)
=> 1 + 6
=> 7

digital_root(942)
=> 9 + 4 + 2
=> 15 ...
=> 1 + 5
=> 6

digital_root(132189)
=> 1 + 3 + 2 + 1 + 8 + 9
=> 24 ...
=> 2 + 4
=> 6
=end

def digital_root(n)

loop do
array = n.to_s.each_char.map(&:to_i)
n = 0
array.each { |num| n+=num  }
break if n < 10; end

return n

end

digital_root(16)
digital_root(942)
digital_root(132189)
digital_root(493193)


=begin
Super refactoring code!

def digital_root(n)
  n < 10 ? n : digital_root(n / 10 + n % 10)
end

=end