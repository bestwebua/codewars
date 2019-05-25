=begin
Sum of a sequence by Vladislav Trotsenko.

Your task is to make function, which returns the sum of a sequence of integers.
The sequence is defined by 3 non-negative values: begin, end, step.
If begin value is greater than the end, function should returns 0

Examples:
sequence_sum(2, 6, 2) 	=> 12
sequence_sum(1, 5, 1) 	=> 15
sequence_sum(1, 5, 3) 	=> 5
sequence_sum(0, 15, 3) 	=> 45
sequence_sum(16, 15, 3) => 0
sequence_sum(2, 24, 22) => 26
sequence_sum(2, 2, 2) 	=> 2
sequence_sum(2, 2, 1) 	=> 2
sequence_sum(1, 15, 3) 	=> 35
sequence_sum(15, 1, 3) 	=> 0
=end

def sequence_sum(begin_number, end_number, step)
  (begin_number..end_number).step(step).inject(0, :+)
end

p sequence_sum(780, 6851543, 5)