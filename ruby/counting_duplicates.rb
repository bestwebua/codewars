=begin
Counting Duplicates by Vladislav Trotsenko.

Write a function that will return the count of distinct case-insensitive alphabetic
characters and numeric digits that occur more than once in the input string.

The input string can be assumed to contain only alphanumeric characters, including
digits, uppercase and lowercase alphabets. 

Examples case:
"abcde" -> 0 	# no characters repeats more than once
"aabbcde" -> 2 	# 'a' and 'b'
"aabbcdeB" -> 2 # 'a' and 'b'
"indivisibility" -> 1 # 'i'
"Indivisibilities" -> 2 # 'i' and 's'
"aa11" -> 2 # 'a' and '1'
=end

def duplicate_count(text)
  count=0
  text.downcase.chars.uniq.each { |uniq| text.downcase.chars.find_all { |char| char==uniq }.size>1 ? count+=1 : count }
  count
end

duplicate_count('aabbc11')

=begin
Super refactoring code #1:
def duplicate_count(text)
  text.upcase.chars.uniq.count { |c| text.upcase.count(c) > 1 }
end

Super refactoring code #2:
def duplicate_count text
  text.upcase.scan(/(.)(?=.*\1)/).uniq.size
end
=end