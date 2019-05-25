=begin
Highest Scoring Wordby Vladislav Trotsenko.

Given a string of words, you need to find the highest scoring word.
Each letter of a word scores points according to it's position in the
alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in
the original string.

All letters will be lowercase and all inputs will be valid.
=end

def high(x)
  string, dict = x.scan(/[a-z]+/), ('a'..'z').each_with_index.to_h
    index = top_rate = 0
      string.each_with_index do |word, char_index|
        current_rate = word.chars.map { |char| char = dict[char]+1 }.inject(:+)
        top_rate = current_rate and index = char_index if current_rate > top_rate
      end
  string[index]
end

high('man i need a taxi up to ubud')