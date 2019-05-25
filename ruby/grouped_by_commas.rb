=begin
Grouped by commas by Vladislav Trotsenko.

Finish the solution so that it takes an input n (integer) and returns
a string that is the decimal representation of the number grouped by
commas after every 3 digits.

Assume: 0 <= n < 1000000000

Examples:

       1  ->           "1"
      10  ->          "10"
     100  ->         "100"
    1000  ->       "1,000"
   10000  ->      "10,000"
  100000  ->     "100,000"
 1000000  ->   "1,000,000"
35235235  ->  "35,235,235"
=end

def solution(n)
  n.to_s.gsub(/(.)(?=.{3}+\z)/, '\1,')
end

solution(1000)

=begin
def solution(n)
  n.to_s.gsub(/(?<=\d)(?=(?:\d{3})+\z)/, ',')
end

def solution(n)
  n.to_s.reverse.scan(/.{1,3}/).join(',').reverse
end
=end