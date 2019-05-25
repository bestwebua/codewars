=begin
Reverse Letters in Sentence by Vladislav Trotsenko.

Take a sentence (string) and reverse each letter in each word in the sentence. Do not
reverse the order of the words, just the letters in each word. If there is punctuation,
it should be interpreted as a regular character; no special rules.

If there is spacing before/after the input string, leave them there.
String will always be defined.

Example:

"A fun little challenge!" => 'A nuf elttil !egnellahc'
" A fun little challenge! "=> ' A nuf elttil !egnellahc '

Addendum: Your function receives a writeable null-terminated string.
Mutate the string in-place and return the sentence.
=end

def reverser(sentence)
  sentence.gsub(/(\w+)/,&:reverse)
end

reverse('A fun little challenge!')

=begin
Before refactoring code:
def reverser(sentence)
  sentence == ' ' ? sentence : sentence.split.map(&:reverse).join(' ')
end
=end