=begin
Fibonacci, Tribonacci and friends by Vladislav Trotsenko.

Well, time to expand the family a little more: think of a Quadribonacci starting with
a signature of 4 elements and each following element is the sum of the 4 previous,
a Pentabonacci (well Cinquebonacci would probably sound a bit more italian, but it
would also sound really awful) with a signature of 5 elements and each following
element is the sum of the 5 previous, and so on.

Well, guess what? You have to build a Xbonacci function that takes a signature of X
elements - and remember each next element is the sum of the last X elements - and
returns the first n elements of the so seeded sequence.

Xbonacci([1,1,1,1],10)==[1,1,1,1,4,7,13,25,49,94]
Xbonacci([0,0,0,0,1],10)==[0,0,0,0,1,1,2,4,8,16]
Xbonacci([1,0,0,0,0,0,1],10)==[1,0,0,0,0,0,1,2,3,6]
=end

def xbonacci(s, n)
  size = s.size
    n > s.size ? (n-size).times { |i| s << s.last(size).inject(:+) } : s = s.first(n)
  s
end

xbonacci([0,1],10)

=begin
Super refactoring code:
def xbonacci(s, n)
  bonacci = s.size
    s << s[-bonacci..-1].inject(:+) while s.size < n
  s.first(n)
end
=end