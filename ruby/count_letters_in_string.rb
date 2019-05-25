=begin
Count letters in string by Vlaislav Trotsenko.

In this kata, you've to count letters in a given string and return the letter count in a hash with
'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char'
instead of string in Crystal.

letter_count('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
=end

def letter_count(str)
  str.chars.group_by(&:to_sym).map { |k,v| [k, v.size] }.to_h
end

letter_count('arithmetics')

=begin
def letter_count(str)
  str.chars.group_by(&:itself).map { |k,v| [k.to_sym, v.size] }.to_h
end
=end