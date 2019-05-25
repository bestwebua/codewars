=begin
Josephus Permutation by Vladislav Trotsenko.

=end

def josephus(items,k)
  result = []
  k-=1
  items.each_with_index do |item, index|
    result << item if index == k
  end
  result
end

josephus([1,2,3,4,5,6,7,8,9,10],2)