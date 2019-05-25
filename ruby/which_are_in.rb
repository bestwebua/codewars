=begin
Which are in? by Vladislav Trotsenko

Given two arrays of strings a1 and a2 return a sorted array r
in lexicographical order of the strings of a1 which are substrings
of strings of a2.

Example 1:
a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
returns ["arp", "live", "strong"]

Example 2:
a1 = ["tarp", "mice", "bull"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
returns []

Beware: r must be without duplicates.
=end

def in_array(array1, array2)
  array1.sort.select { |word| array2.find { |subword| subword.include?(word) } }
end

in_array(['live', 'arp'], ["lively", "alive", "harp", "sharp", "armstrong"])



=begin
Before refactoring code:

def in_array(array1, array2)
  r = []
  array1.sort.each { |word| array2.each { |subword| r.push(word) if subword.include?(word) && !(r.include?(word)) }}
  r
end

=end