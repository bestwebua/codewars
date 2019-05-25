=begin
Convert PascalCase string into snake_case by Vladislav Trotsenko.

Complete the function/method so that it takes CamelCase string and returns the string
in snake_case notation. Lowercase characters can be numbers. If method gets number,
it should return string.

to_underscore('TestController') #returns test_controller
to_underscore('MoviesAndBooks') #returns movies_and_books
to_underscore('App7Test')       #returns app7_test
to_underscore(1)                #returns "1"
=end


def to_underscore(string)
  string.to_s.gsub(/(?<=.)(?=[A-Z])/, '_').downcase
end

to_underscore('77')

=begin
#Before refactoring code:
def to_underscore(string)
  result = string.to_s.chars.map { |i| i[/\D/] && i == i.upcase ? i = '_' + i.downcase : i }.join
  result[0] == '_' ? result[1..-1] : result
end
=end