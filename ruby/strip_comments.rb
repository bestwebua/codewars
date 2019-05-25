=begin
Strip Comments by Vladislav Trotsenko.

Complete the solution so that it strips all text that follows any of a set of
comment markers passed in. Any whitespace at the end of the line should also
be stripped out.

result = solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])
result should == "apples, pears\ngrapes\nbananas"
=end

def solution(str, markers)
  str.gsub(/(\s+)?[#{markers.join}].*/, '')
end

solution("apples, pears# and bananas\ngrapes\nbananas $apples", ['#', '$'])

=begin
#Before refactoring code:
def solution(input, markers)
  markers = markers.map { |marker| marker[/\W/] && marker[0] != '#' ? marker = "\\" + marker : marker }.join('|')
  input.split("\n").map { |item| item.sub(/\A?\s+?(#{markers})(.)+\z/, '') }.join("\n")
end
=end