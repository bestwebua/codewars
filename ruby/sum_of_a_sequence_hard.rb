=begin
Sum of a Sequence [Hard-Core Version] by Vladislav Trotsenko.

The task is simple to explain: simply sum all the numbers from the first parameter
being the beginning to the second parameter being the upper limit (possibly included),
going in steps expressed by the third parameter:

sequence_sum(2, 2, 2) # 2
sequence_sum(2, 6, 2) # 12 (= 2 + 4 + 6)
sequence_sum(1, 5, 1) # (= 1 + 2 + 3 + 4 + 5)
sequence_sum(1, 5, 3) # 5 (= 1 + 4)

If it is an impossible sequence (with the beginning being larger the end and a positive step
or the other way around), just return 0. See the provided test cases for further examples :)

Note: differing from the other base kata, much larger ranges are going to be tested, so you
should hope to get your algo optimized and to avoid brute-forcing your way through the solution.
=end

def sequence_sum(begin_number, end_number, step)
  n = (end_number - begin_number) / step + 1
  n <= 0 ? 0 : (2 * begin_number + step * (n - 1)) * n / 2
end

sequence_sum(1, 2, 1)


=begin
def sequence_sum(begin_number, end_number, step)
  result = []
    if begin_number > end_number && begin_number.negative? && end_number.negative?
  	  begin_number, end_number = end_number, begin_number
  	    seq = (begin_number..end_number).to_a.reverse
      else seq = (begin_number..end_number).to_a; end
    (0...seq.size).step(step.abs).each { |index| result << seq[index] }
  begin_number == end_number ? 0 : result.inject(0, :+)
end
=end