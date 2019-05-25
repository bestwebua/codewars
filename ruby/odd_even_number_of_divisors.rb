=begin
Odd/Even number of divisors by Vladislav Trotsenko.

=end
def oddity(n)
  Math.sqrt(n)%1 == 0 ? 'odd' : 'even'
end

oddity(12)

=begin
#before refactoring code, not math way...
def oddity(n)
  (1..n).select { |i| n%i == 0 }.size.odd? ? 'odd' : 'even'
end
=end