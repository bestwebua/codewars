=begin
Last by Vladislav Trotsenko.

Find the last element of a list.

Examples:
last( [1,2,3,4] ) # => 4
last( "xyz" ) # => z
last( 1,2,3,4 ) # => 4
=end

def last(*arg)
  arg[-1].is_a?(String) ? arg[-1][-1] : arg.flatten[-1].is_a?(String) ? arg.flatten[-1][-1] : arg.flatten[-1]
end

last([1, 2, ["123", [111, [123, [[123], [1]]]]], 333, "txt"])

=begin
def last(*arg)
  arg[-1].is_a?(String) ? arg[-1][-1] : arg.flatten[-1]
end

def last(*arg)
  arg.last.is_a?(String) ? arg.last[-1] : arg.flatten.last
end
=end