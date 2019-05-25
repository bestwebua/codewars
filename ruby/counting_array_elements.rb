=begin
Counting Array Elements by Vladislav Trotsenko.
Write a function that takes an array and counts the number of each unique element present.

For instance:
count(['james', 'james', 'john']) 
#=> { 'james' => 2, 'john' => 1}
=end

def count(array)
  counter = Hash.new(0)
  array.each { |item| counter[item]+=1 }
  counter
end

count(['a', 'b', 'c', 'a'])

=begin
Before refactoring #2:
def count(array)
  h = {}
  array.each { |item| h.has_key?(item) ? h[item]+=1 : h[item]=1 }
  h
end

Before refactoring #1:
def count(array)
  hash = {}
  array.uniq.each { |item| hash[item] = 0 }
  array.each { |item| hash[item] += 1 if hash.has_key?(item) }
  hash
end
=end