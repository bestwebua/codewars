=begin
Zero-balanced Array by Vladislav Trotsenko.

An array is called zero-balanced if its elements sum to 0 and
for each positive element n, there exists another element that
is the negative of n. Write a function named ìsZeroBalanced
that returns true if its argument is zero-balanced array, else
return false. Note that an empty array will not sum to zero.
=end


def is_zero_balanced(arr)
  if arr.empty?
    false
  else
    arr = arr.select(&:nonzero?).group_by(&:itself).map { |k,v| [k, v.size] }.to_h
    arr.all? { |k,v| arr[k] == arr[-k] }
  end
end

is_zero_balanced([4,3,0,0,-3,-4])