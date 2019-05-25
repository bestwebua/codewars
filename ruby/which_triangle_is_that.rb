=begin
Which triangle is that? by Vladislav Trotsenko.

Build a function that will take the length of each side of a triangle and return if it's either an
Equilateral, an Isosceles, a Scalene or an invalid triangle. It has to return a string with the type of triangle.

For example:
type_of_triangle(2, 2, 1) --> "Isosceles"
=end

def type_of_triangle(a, b, c)
  if [a, b, c].all? { |arg| arg.is_a?(Fixnum) } && (a+b>c && a+c>b && b+c>a)
    case
      when a.eql?(b) && a.eql?(c) then 'Equilateral'
      when a.eql?(b) || b.eql?(c) || c.eql?(a) then 'Isosceles'
      else 'Scalene'; end
  else 'Not a valid triangle'; end
end

type_of_triangle('1', 1, 1)


=begin
Super refactoring code:
def type_of_triangle(*a)
  err = "Not a valid triangle"
  a.sort[0..1].reduce(:+) - a.sort[2] <= 0 ? err : ['Isosceles', 'Scalene', 'Equilateral'][a.uniq.size <=> 2]
  rescue 
    err
end

Before refactoring code:
def type_of_triangle(a, b, c)
  if [a, b, c].select { |arg| arg.is_a?(Fixnum) }.size == 3 && (a+b>c && a+c>b && b+c>a)
    case
      when a.eql?(b) && a.eql?(c) then 'Equilateral'
      when a.eql?(b) || b.eql?(c) || c.eql?(a) then 'Isosceles'
      else 'Scalene'; end
  else 'Not a valid triangle'; end
end
=end