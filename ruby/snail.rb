=begin
Snail Sort. Solution by Vladislav Trotsenko.
https://www.codewars.com/kata/snail

Given an n x n array, return the array elements arranged from outermost elements to
the middle element, traveling clockwise.

array = [[1,2,3],
         [4,5,6],
         [7,8,9]]
snail(array) #=> [1,2,3,6,9,8,7,4,5]

For better understanding, please follow the numbers of the next array consecutively:
array = [[1,2,3],
         [8,9,4],
         [7,6,5]]
snail(array) #=> [1,2,3,4,5,6,7,8,9]

The 0x0 (empty matrix) is represented as [[]].
=end

def snail(array)
  
  result = []

  arr_max_size = array.max_by { |elem| elem.size }.size
  array.each { |arr| arr.push(nil) until arr.size == arr_max_size }

  until array.empty? 
	result += array.shift
	array = array.map(&:reverse).transpose; end

  result -= [nil]

end

snail([[1,2,3,4,5,6],[21,22,23,24],[32,33,34],[36,31],[28,29,30],[12,13,14,15,16]])