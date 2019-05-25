=begin
Unique In Order by Vladislav Trotsenko.

Implement the function unique_in_order which takes as argument
a sequence and returns a list of items without any elements
with the same value next to each other and preserving the
original order of elements.

For example:
unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
unique_in_order([1,2,2,3,3])       == [1,2,3]
=end

def unique_in_order(data)
  (data.is_a?(Array) ? data : data.chars).chunk(&:itself).map(&:first)
end

unique_in_order([1,2,3,1,1])

=begin
# before refactoring code
def unique_in_order(data)
  data = data.is_a?(Array) ? data : data.chars
  result, arr = [], []
    data.each_with_index do |item, index|
      if arr.empty? || arr[-1] == item
        arr << item
      else
        result << arr.clone
        arr.clear
        arr << item
      end
      result << arr if index == data.size-1
    end
  result.map(&:uniq).flatten
end
=end