=begin
Permutations by Vladislav Trotsenko.

You have to create all permutations of an input string and remove duplicates, if present.
This means, you have to shuffle all letters from the input in all possible orders.

Examples:
permutations('a'); # ['a']
permutations('ab'); # ['ab', 'ba']
permutations('aabb'); # ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa']

The order of the permutations doesn't matter.
=end

def permutations(string)
  return [''] if string.empty?
    (0...string.size).flat_map do |i|
      char, rest = string[i], string[0...i] + string[i+1..-1]
    permutations(rest).map { |sub| char + sub }; end.uniq
end

permutations('aa')

=begin
def permutations(string)
  string.chars.permutation(string.size).to_a.uniq.map(&:join)
end

About permutations(rest):
so for every iteration of the block you split the string in two, char and rest.
so rest is the entire string except one character. then you call permutations
recursively with that shorter string.
=end