=begin
What comes after? by Vladislav Trotsenko.

You will be given two inputs: a string of words and a letter.
For each string, return the alphabetic character after every instance
of letter(case insensitive).

If there is a number, punctuation or underscore following the letter,
it should not be returned.

If letter = 'r':
comes_after("are you really learning Ruby?") # => "eenu"
comes_after("Katy Perry is on the radio!")   # => "rya"
comes_after("Pirates say arrrrrrrrr.")       # => "arrrrrrrr"
comes_after("r8 your friend")                # => "i"
=end

def comes_after(str,letter)
  str.scan(/(?<=#{letter})[a-z]/i).join
end

comes_after('p8tice makes pottery p0rfect', 'p')

=begin
#Before refactoring code:
def comes_after(str,letter)
  result = ''
    str.each_char.with_index do |char, index|
      result << str[index+1] if char.downcase == letter.downcase && index < str.size-1 && str[index+1][/[a-z]/i]
    end
  result
end

Special constructs (non-capturing)
(?:X)   X, as a non-capturing group
(?idmsux-idmsux)    Nothing, but turns match flags on - off
(?idmsux-idmsux:X)    X, as a non-capturing group with the given flags on - off
(?=X)   X, via zero-width positive lookahead
(?!X)   X, via zero-width negative lookahead
(?<=X)  X, via zero-width positive lookbehind
(?<!X)  X, via zero-width negative lookbehind
(?>X)   X, as an independent, non-capturing group
=end