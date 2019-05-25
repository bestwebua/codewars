def triangle_type (a, b, c)
  if a+b>c && a+c>b && b+c>a && ![a,b,c].include?(0)
  cassettes, hypotenuse = [a,b,c].sort.take(2).map { |i| i**2 }.inject(:+), [a,b,c].max**2
    case
      when cassettes == hypotenuse then 2
      else cassettes > hypotenuse ? 1 : 3
    end
  else
    0
  end
end

p triangle_type(1,1,1)