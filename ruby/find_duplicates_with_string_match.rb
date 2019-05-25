=begin
Find Duplicates with String.match by Vladisalv Trotsenko.

One of your co-workers created a method called num_duplicates. This method takes in a string message and
returns the number of duplicate words in the sentence.

However, you decided to write two test cases and found a bug! Oh no!

The first test case works fine, but the second one fails.
Can you figure out what went wrong?
=end

def num_duplicates(message)
  duplicates, words = [], []
    message.split(/[.\s]/).map(&:downcase).each do | word |
      isDuplicate = words.include?(word)
      alreadyFound = duplicates.include?(word)
      isDuplicate && isDuplicate ? duplicates << word : words << word
    end
  duplicates.size
end

num_duplicates('Kata make the brain grow strong. The brain like kata.')

=begin
Super refactoring code:
def num_duplicates(message)
  words = message.downcase.split(/\W+/)
  words.size - words.uniq.size
end


def num_duplicates(message)
  # track my duplicates in an array
  duplicates = []
  # track all of the words we've looped over
  words = []
  # split on spaces and loop over each word
  message.split(" ").each do | word | 
    # set each word to lower case and only accept
    # characters in the alphabet and hyphens
    word = word.downcase.match("[a-zA-Z-]*")
    # is this a dulpicate?
    isDuplicate = words.include?(word)
    # have we found this duplicate already?
    alreadyFound = duplicates.include? word
    
    if(isDuplicate and !alreadyFound) 
      # new duplicate found
      duplicates << word
    end
    # record our translated word
    words << word
  end
  # return the size of our duplicates
  duplicates.size
end
=end