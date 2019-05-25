=begin
Return the closest number multiple of 10 by Vladislav Trotsenko.

Given a number return the closest number to it that is divisible by 10.
Example input:
22
25
37

Expected output:
20
30
40
=end

def closest_multiple_10(i)
  i.round(-1)
end

closest_multiple_10(22)

=begin
#long way)
def closest_multiple_10(i)
  (i/10.0).round * 10
end
=end