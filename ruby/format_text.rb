=begin
Format Text by Vladislav Trotsenko.

Write a function format that takes two arguments, text and width, and formats the text to
fit the width.

Your function should divide the given text into lines using newline characters. It should
fit as many words into each line as possible without exceeding the given width or splitting
any words between two lines. There should not be a space at the beginning or end of any line.
=end

def format_(text, step)

  string = ""
  count = -1

  text.split(' ').each do |word|
	if count + word.size < step
	  	string += ' ' + word
	  	count += 1 + word.size
	else
	  	string += "\n" + word
	  	count = word.size
	end
	count
  end

string.strip

end

format_('12345 12345 123 1', 5)

=begin
Super refactoring code:
def format_ (text, step)
  text.scan(/(?<= |\A).{,#{step}}(?= |\z)/).join "\n"
end
=end