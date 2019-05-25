=begin
Partial Word Searching by Vladislav Trotsenko.

Write a method that will search an array of strings for all strings that contain another string,
ignoring capitalization. Then return an array of the found strings.

The method takes two parameters, the query string and the array of strings to search, and returns
an array.

If the string isn't contained in any of the strings in the array, the method returns an array
containing a single string: "Empty" (or Nothing in Haskell, or "None" in Python)
Examples

If the string to search for is "me", and the array to search is ["home", "milk", "Mercury", "fish"],
the method should return ["home", "Mercury"].
=end

def findWord(query, array_of_strings)
  result = array_of_strings.grep(/#{query}/i)
  result.empty? ? ['Empty'] : result
end

findWord('og', ["elf", "bog creature", "bee", "milk", "FROGS"])

=begin
#Before refactoring code 2
def findWord(query, array_of_strings)
  result = array_of_strings.grep(/#{query}/i)
  !result.empty? && result || ["Empty"]
end

#Before refactoring code 1
def findWord(query, array_of_strings)
  result = array_of_strings.select { |i| i.downcase.include?(query.downcase) }
  result.empty? ? ['Empty'] : result
end
=end