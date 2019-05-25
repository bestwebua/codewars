=begin
No zeros for heros by Vladislav Trotsenko.

Numbers ending with zeros are boring. They might be fun in your world, but not here.
Get rid of them. Only the ending ones.

1450 	->   145
960000 	->   96
1050 	->   105
-1050   ->  -105
=end
def no_boring_zeros(num)
  num = num.to_s.chars
  num.pop while num.last == '0'
  num.join.to_i
end

no_boring_zeros(10450)

=begin
Super refactoring code:
def no_boring_zeros(num)
  num.to_s.sub(/0+$/, '').to_i
end
=end