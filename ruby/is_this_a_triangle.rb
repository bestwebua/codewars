=begin
Is this a triangle? by Vladisalv Trotsenko.

Implement a method that accepts 3 integer values a, b, c. The method should return true
if a triangle can be built with the sides of given length and false in any other case.

(In this case, all triangles must have surface greater than 0 to be accepted).
=end

def isTriangle(a, b, c)
  (a+b>c) && (b+c>a) && (a+c>b) rescue false
end

isTriangle(1, 2, 3)

=begin
def isTriangle(*a)
  a.sort![0] + a[1] > a[2]
end
=end