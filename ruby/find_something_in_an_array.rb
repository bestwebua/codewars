=begin
Find something in an Array by Vladislav Trotsenko.

Create a find function that takes a string and an array.
If the string is in the array, return true.

find("hello", ["bye bye","hello"]) // return true
find("anything", ["bye bye","hello"]) // return false

Note: Hello != hello, case-sensitive.
=end

def find(string, array)
  array.include?(string)
end

find("hello", ["bye bye","hello"])