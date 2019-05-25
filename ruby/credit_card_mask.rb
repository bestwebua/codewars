=begin
Credit Card Mask by Vladislav Trotsenko.

Usually when you buy something, you're asked whether your credit card number,
phone number or answer to your most secret question is still correct. However,
since someone could look over your shoulder, you don't want that shown on your
screen. Instead, we mask it.

Your task is to write a function maskify, which changes all but the last four
characters into '#'.

Examples:
maskify('4556364607935616') # should return '############5616'
maskify('64607935616')      # should return '#######5616'
maskify('1')                # should return '1'
maskify('')                 # should return ''

# "What was the name of your first pet?"
maskify('Skippy')                                   # should return '##ippy'
maskify('Nananananananananananananananana Batman!') # should return '####################################man!'
=end

def maskify(cc)
  cc.chars.map.with_index { |char, index| cc.size > 4 && index.between?(0,cc.size-5) ? char = '#' : char }.join
end

maskify('4556364607935616')

=begin
Super refactoring code:
def maskify(cc)
  cc.gsub(/.(?=....)/, '#')
end

This regular expression ".(?=....)" means:
1. /here goes the Regex/ ... Regexs are put between /
2. gsub means "Replace any match"
3. The first dot means "any character". A dot means "Any character".
4. The (?= ) means "followed by", so (?=....) means "followed by any 4 characters"

And the whole thing gsub(/.(?=....)/,"#") means: "Replace any character followed by any 4 characters with #"
=end