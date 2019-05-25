=begin
Binary Calculator by Vladislav Trotsenko.

In this kata you need to write a function that will receive two strings (n1 and n2),
each representing an integer as a binary number. A third parameter will be provided (o) as
a string representing one of the following operators: add, subtract, multiply.

Your task is to write the calculate function so that it will perform the arithmetic and
the result returned should be a string representing the binary result.

Examples:
1 + 1 == 10
10 + 10 == 100

Negative binary numbers are usually preceded by several 1's. For this kata, negative numbers
can be represented with the negative symbol at the beginning of the string.

Examples of negatives:
1 - 10 == -1
10 - 100 == -10
=end

def calculate(n1, n2, action)
n1, n2 = n1.to_i(2), n2.to_i(2)
  result = case action
    when 'add' then n1 + n2
    when 'subtract' then n1 - n2
    when 'multiply' then n1 * n2; end
  result.to_s(2)
end

calculate('0', '0', 'add')

=begin
def calculate(n1, n2, action)
n1, n2 = n1.chars.map(&:to_i), n2.chars.map(&:to_i) #Converting into array with integers
result = []
count = 0

residue = (n1.size - n2.size).abs #Compute the difference between arrays for determine the bit

#Filling with zeroes according with the bit, for instance 100 and 1 after this case: 100 and 001.
  case n1.size <=> n2.size
    when -1 then residue.times { n1.insert(0, 0) }
    when  1 then residue.times { n2.insert(0, 0) }
  end

n1, n2 = n1.reverse!, n2.reverse!

  n1.each do |i|
    case action
	  when 'add' then case
		when n1.size == 1 && (i == 0 || n2[count] == 0) then i == n2[count] ? result << 0 << 0 : result << 1 << 0
		when (i == 0 && i == n2[count]) || (i == 1 && i != n2[count]) then result << i
		when i == 0 && i != n2[count] then result << n2[count]
		when i == 1 && i == n2[count] then result << 0 << i
	  end
    end
  count += 1
  end

result.reverse.join
end
=end