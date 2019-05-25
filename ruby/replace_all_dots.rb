=begin
Replace all dots by Vladislav Trotsenko.
=end

def replaceDots(str)
  str.tr('.', '-')
end

=begin
def replaceDots(str)
  str.gsub(/[.]/, '.' => '-')
end
=end