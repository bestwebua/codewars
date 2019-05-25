=begin
Remove String Spaces by Vladislav Trotsenko.

Simple, remove the spaces from the string, then return the resultant string.
=end

def no_space(x)
  x.delete(' ')
end

no_space('Olo lo')

=begin
Before refactoring code:
def no_space(x)
  x.tr(' ','')
end 
=end