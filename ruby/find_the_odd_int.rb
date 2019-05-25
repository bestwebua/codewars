=begin
Find the odd int by VLadislav Trotsenko.

Given an array, find the int that appears an odd number of times.
There will always be only one integer that appears an odd number of times.	
=end

def find_it(seq)
  seq.find { |i| seq.count(i).odd? }
end

find_it([1,1,2,-2,5,2,4,4,-1,-2,5])