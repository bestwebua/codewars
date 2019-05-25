=begin
Title Case by Vladislav Trotsenko

A string is considered to be in title case if each word in the string is either (a)
capitalised (that is, only the first letter of the word is in upper case) or (b)
considered to be an exception and put entirely into lower case unless it is the
first word, which is always capitalised.

Write a function that will convert a string into title case, given an optional list
of exceptions (minor words). The list of minor words will be given as a string with
each word separated by a space. Your function should ignore the case of the minor
words string -- it should behave in the same way even if the case of the minor word
string is changed.

title_case('a clash of THE KINGS', 'a an the of') # should return: 'A Clash of the Kings'
title_case('the quick brown fox') # should return: 'The Quick Brown Fox'

=end

def title_case(title, minor_words=0)

	title.capitalize!
	title = title.split(' ')	#converting string to array
	#title[0].capitalize!		#working in ruby 2.3.1p112 only
	minor_words == 0 ? (minor_words = Array.new) : (minor_words = minor_words.downcase.split (' '))
	title.drop(1).collect do |word| word.capitalize! unless minor_words.include?(word); end
	title = title.join(' ')		#converting an array to string

end

title_case('a clash of THE KINGS', 'a an the of')
title_case('A bc', 'BC')


=begin
Super refactoring code!

def title_case(title, minor_words='')
  title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')
end

=end