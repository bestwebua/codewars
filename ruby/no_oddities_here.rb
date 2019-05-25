=begin
No oddities here by Vladislav Trotsenko.

Write a small function that returns the values of an array that are not odd.
All values in the array will be integers. Return the good values in the order
they are given.
=end

def no_odds(values)
  values.select(&:even?)
end

no_odds([1, 2, 3, 4, 5])

=begin
def no_odds(values)
  values.reject(&:odd?)
end
=end