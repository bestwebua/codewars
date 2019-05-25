=begin
Simple Fun #177: Rank Of Element by Vladislav Trotsenko.

=end

def rank_of_element(arr,i)
  arr[0...i].count { |e| e <= arr[i] } + arr[i+1..-1].count { |e| e < arr[i] }
end

rank_of_element([2, 1, 2, 1, 2],2)

=begin
Before refactoring code:
def rank_of_element(arr,i)
  arr[0...i].select { |e| e <= arr[i] }.size + arr[i+1..-1].select { |e| e < arr[i] }.size
end
=end