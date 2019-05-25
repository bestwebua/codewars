=begin
Duplicate Arguments by Vladislav Trotsenko.

Complete the solution so that it returns true if it contains any duplicate argument values.
Any number of arguments may be passed into the function. The solution should implement the
most optimal algorithm possible.

solution(1, 2, 3) // returns false
solution(1, 2, 3, 2) // returns true
solution('1', '2', '3', '2') // returns true

The array values passed in will only be strings or numbers. The only valid return values
are true and false.
=end

def solution(*arr)
  arr.select { |i| arr.count(i) > 1 }.uniq.any? ? true : false
end

solution(1, 1)