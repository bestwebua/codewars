=begin
Arrh, grabscrab!

Pirates have notorious difficulty with enunciating. They tend
to blur all the letters together and scream at people.

At long last, we need a way to unscramble what these pirates
are saying.

Write a function that will accept a jumble of letters as well
as a dictionary, and output a list of words that the pirate
might have meant.

For example:
grabscrab "ortsp", ["sport", "parrot", "ports", "matey"]

Should return ["sport", "ports"].
Good luck!

Return an empty array if there are no matches.

For best results, return matches in the same order as in
the dictionary.
=end

def grabscrab(anagram, dictionary)
  dictionary.select { |word| word.chars.sort == anagram.chars.sort }
end
