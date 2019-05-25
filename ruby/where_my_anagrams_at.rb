=begin
Where my anagrams at? by Vladislav Trotsenko.

Write a function that will find all the anagrams of a word from a list.
You will be given two inputs a word and an array with words. You should
return an array of all the anagrams or an empty array if there are none.

For example:
'abba' & 'baab' == true
'abba' & 'bbaa' == true
'abba' & 'abbba' == false
=end

def anagrams(word, *words)
	words.find_all { |words| words.chars.sort.join == word.chars.sort.join }
end

anagrams('cba', 'abc', 'cab', 'cba')


=begin
Super refactoring code:

def anagrams(word, *words)
	words.select { |words| words.chars.sort == word.chars.sort }
end

=end