=begin
IQ Test by Vladislav Trotsenko.

Bob is preparing to pass IQ test. The most frequent task in this test is to find out
which one of the given numbers differs from the others. Bob observed that one number
usually differs from the others in evenness. Help Bob — to check his answers, he needs
a program that among the given numbers finds one that is different in evenness, and
return a position of this number.

! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes
of the elements start from 1 (not 0).

iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers are even
iq_test("1 2 1 1") => 2 // Second number is even, while the rest of the numbers are odd
=end

def iq_test(numbers)
  n = numbers.split.map { |i| i.to_i.even? }
  n.index(n.min_by { |i| n.count(i) })+1
end

iq_test('2 4 7 8 10')

=begin
Before refactoring code 2:
def iq_test(numbers)
  even = odd = 0
    numbers, result = numbers.split.map(&:to_i), nil
      numbers.each { |item| item.even? ? even+=1 : odd+=1 }
        numbers.find.with_index do |item, index|
          result = case
            when even > odd then item.odd? and index
            else item.even? and index
          end
        end
      result+1
end

Before refactoring code 1:
def iq_test(numbers)
  even = odd = 0
    numbers, result = numbers.split.map(&:to_i), nil
      numbers.each { |item| item.even? ? even+=1 : odd+=1 }
        numbers.find.with_index do |item, index|
          even > odd ? (item.odd? and result = index+1) : (item.even? and result = index+1)
        end
      result
end
=end