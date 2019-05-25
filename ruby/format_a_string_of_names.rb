=begin
Format a string of names like 'Bart, Lisa & Maggie' by Vladislav Trotsenko.

Given: an array containing hashes of names
Return: a string formatted as a list of names separated by commas except for the
last two names, which should be separated by an ampersand.

list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

list([ {name: 'Bart'} ])
# returns 'Bart'

list([])
# returns ''

Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.
=end

def list(names)
  names.map(&:values).join(', ').reverse.sub(/,/, '& ').reverse
end

list([{name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}])


=begin
def list(names)
  result, names = '', names.map(&:values).flatten
    names.each_with_index { |item, index| index == names.size-2 ? result << item + ' & ' : result << item + ', ' }
  result[0..-3]
end
=end