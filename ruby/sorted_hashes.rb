=begin
Sorted hashes by Vladislav Trotsenko.

Complete the solution so that it sorts an array of hashes passed in by the hash
key specified.

solution([{'a' => 2}, {'a' => 1}], 'a')
# => [{'a' => 1}, {'a' => 2}]]
=end

def solution(array, key)
  array.sort_by { |i| i[key] }
end

solution([{'a' => 2}, {'a' => 1}], 'a')