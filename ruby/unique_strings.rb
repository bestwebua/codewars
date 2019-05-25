=begin
Unique Strings by Vladislav Trotsenko.

=end

def uniq_count(string)
  string.chars.permutation.map(&:join).uniq.size
end

uniq_count('aba')