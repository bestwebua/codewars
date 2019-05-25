=begin
Least Common Multiple by Vladislav Trotsenko.

Write a function that calculates the least common multiple of its arguments;
each argument is assumed to be a non-negative integer.
=end

def lcm(*args)
  args.reduce(:lcm)
end

lcm(1,2,3,4,5)

=begin
def lcm(*args)
  return 0 if args.include?(0)
  i = 1
  loop do 
    return i if args.all? { |a| i % a == 0 }
    i += 1
  end
end
=end