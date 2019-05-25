=begin
Building Strings From a Hash by Vladislav Trotsenko.

Complete the solution so that it takes the object (JavaScript/CoffeeScript) or
hash (ruby) passed in and generates a human readable string from its key/value pairs.

Example:
solution({a: 1, b: '2'}) # should return "a = 1,b = 2"
=end

def solution(pairs)
  pairs.map { |k, v| "#{k} = #{v}" }.join(',')
end

solution({a: 1, b: '2'})