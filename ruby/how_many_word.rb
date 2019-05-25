=begin
Thinking & Testing : How many "word"? by Vladislav Trotsenko.
=end

def testit(s)
  s.scan(/w.*?o.*?r.*?d/i).size
end

testit('When you in order to do something by a wrong way, your heart will missed somewhere.')



=begin
#Before refactoring code:
def testit(s)
  pattern = 'word'
    index = found = 0
      s.downcase.scan(/w|o|r|d/).each do |item|
        index+=1 if item == pattern[index]
        found+=1 and index = 0 if index > pattern.size-1
      end
  found
end
=end

#dict = 'word'.each_char.with_object({}) { |char, hash| hash[char] = 0 }