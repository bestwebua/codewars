=begin
Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string
of those numbers in the form of a phone number.

createPhoneNumber(Array[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
=end

def createPhoneNumber(numbers)
  result = '('
    numbers.map(&:to_s).each_with_index do |number, index|
      case index
        when 2 then result << number << ') '
        when 5 then result << number << '-'
        else result << number
      end
    end
  result
end

createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])

=begin
Super refactoring code:
def createPhoneNumber(array)
  '(%d%d%d) %d%d%d-%d%d%d%d' % array
end
=end