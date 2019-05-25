=begin
If you can read this... by Vladislav Trotsenko.

You'll have to translate a string to Pilot's alphabet (NATO phonetic alphabet).

Input: If you can read
Output: Indian Foxtrot Yankee Oscar Uniform Charlie Alfa November Romeo Echo Alfa Delta

Some notes
Keep the punctuation, and remove the spaces.
Use Xray without dash or space.
=end

def to_nato(words)
	alphabet = ['Alfa', 'Bravo', 'Charlie', 'Delta', 'Echo', 'Foxtrot', 'Golf', 'Hotel', 'India', 'Juliett', 'Kilo', 'Lima', 'Mike', 'November', 'Oscar', 'Papa', 'Quebec', 'Romeo', 'Sierra', 'Tango', 'Uniform', 'Victor', 'Whiskey', 'Xray', 'Yankee', 'Zulu']
	dictionary = (('a'..'z').zip alphabet).to_h
	words.downcase.delete(' ').chars.map { |char| dictionary.has_key?(char) ? char=dictionary[char] : char }.join(' ')
end

to_nato('If you can read')

=begin
Super refactoring code with nums:
def to_nato(words)
	alphabet = ['Alfa', 'Bravo', 'Charlie', 'Delta', 'Echo', 'Foxtrot', 'Golf', 'Hotel', 'India', 'Juliett', 'Kilo', 'Lima', 'Mike', 'November', 'Oscar', 'Papa', 'Quebec', 'Romeo', 'Sierra', 'Tango', 'Uniform', 'Victor', 'Whiskey', 'Xray', 'Yankee', 'Zulu']
	digits = ['Zero', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Niner']
	dictionary = ( (('a'..'z').zip alphabet)+(('0'..'9').zip digits) ).to_h
	words.downcase.gsub(' ', '').chars.map { |c| dictionary[c] || c }.join(' ')
end
=end