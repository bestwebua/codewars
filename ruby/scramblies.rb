=begin
Scramblies by Vladislav Trotsenko.

Write function scramble(str1,str2) that returns true if a portion of str1 characters can
be rearranged to match str2, otherwise returns false.

For example:
str1 is 'rkqodlw' and str2 is 'world' the output should return true.
str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
str1 is 'katas' and str2 is 'steak' should return false.

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered.
=end

def scramble(s1,s2)

h = Hash.new
s1.chars.each { |letter| h.has_key?(letter) ? h[letter]+=1 : h[letter]=1 }

counter = 0
s2.chars.each do |letter|

	if h.has_key?(letter) && h[letter] >= 1
		h[letter]-=1
		counter += 1
	else break; end

end

s2.size == counter ? true : false

end

scramble('misp', 'mississippi')
scramble('mispxxxxxxxx', 'mississippi')

=begin
Super refactoring #1:
def scramble(s1,s2)
  s2.chars.uniq.all?{|x| s2.count(x)<=s1.count(x)}
end

Super refactoring #2:
def scramble(s1,s2)
  s2.chars.all? { |c| s1.sub!(c, '') }
end
=end