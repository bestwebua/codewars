=begin
Sentence Count by Vladislav Trotsenko.

Create a function that will tell how many sentences are in a paragraph, based
on the number of periods ".", question marks "?" and "!" exclamation points
that an input string contains.
=end

def sentence_count(paragraph)
  paragraph.count("." "?" "!")
end

=begin
Before refactoring:
def sentence_count(paragraph)
  paragraph.split(/[\.\?\!]/).size
end
=end