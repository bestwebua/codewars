=begin
Most frequently used words in a text by Vladislav Trotsenko.

Write a function that, given a string of text (possibly with punctuation and line-breaks),
returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

Assumptions:
- A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII.
(No need to handle fancy punctuation.)
- Matches should be case-insensitive, and the words in the result should be lowercased.
- Ties may be broken arbitrarily.
- If a text contains fewer than three unique words, then either the top-2 or top-1 words should be
returned, or an empty array if a text contains no words.

top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")
# => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
# => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't")
# => ["won't", "wont"]

Bonus points (not really, but just for fun):
1. Avoid creating an array whose memory footprint is roughly as big as the input text.
2. Avoid sorting the entire array of unique words.
3. Do the above in idiomatic, readable Ruby.
=end

def top_3_words(text)
  text.downcase.scan(/\w(?:'|\w)*/).group_by(&:itself).map { |k,v| [k, v.size] }.max_by(3) { |k,v| v }.map(&:first)
end

top_3_words("' asd")

=begin
Before refactoring:
def top_3_words(text)
  text.gsub(/\s/, '') == "'" ? [] : text.downcase.scan(/[a-z']+/).group_by(&:itself).map { |k,v| [k, v.size] }.max_by(3) { |k,v| v }.map(&:first)
end

Super refactoring code:
def top_3_words text
  arr = text.downcase.scan(/\w(?:'|\w)*/)
  arr.uniq.max_by(3){|w| arr.count w }
end
end