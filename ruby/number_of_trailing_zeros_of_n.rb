=begin
Number of trailing zeros of N!

Write a program that will calculate the number of trailing zeros
in a factorial of a given number.

N! = 1 * 2 * 3 * ... * N
Be careful 1000! has 2568 digits...

Examples:

zeros(6) = 1
# 6! = 1 * 2 * 3 * 4 * 5 * 6 = 720 --> 1 trailing zero

zeros(12) = 2
# 12! = 479001600 --> 2 trailing zeros
=end

def zeros(n)
  power, result = 1, 0
  loop do
    temp_result = n / 5**power
    result += temp_result
    power += 1
    break if temp_result.zero?
  end
  result
end

# Refactor with recursion:

def zeros(n)
  n < 5 ? 0 : (n / 5) + zeros(n / 5)
end
