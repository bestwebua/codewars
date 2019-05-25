=begin
Count of positives / sum of negatives by Vladislav Trotsenko.

Given an array of integers. Return an array, where the first
element is the count of positives numbers and the second element
is sum of negative numbers. The passed array should NOT be changed.
=end

def count_positives_sum_negatives(lst)
  result = [0, 0]
    lst.each { |i| i.positive? ? result[0]+=1 : result[1]+=i }
  result
end

count_positives_sum_negatives([1, 2, 3, -1, -10])