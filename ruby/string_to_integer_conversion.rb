=begin
String to integer conversion by Vladislav Trotsenko.

You are asked to write a myParseInt method with the following rules:
- It should make the conversion if the given string only contains a single integer
value (and eventually spaces - including tabs, line feeds... - at both ends)
- For all other strings (including the ones representing float values), it should
return NaN
- It should assume that all numbers are not signed and written in base 10
=end

def my_parse_int(string)
  string[/^\s*\d+\s*$/] ? string.to_i : "NaN"
end

my_parse_int("123")

=begin
def my_parse_int(string)
  string.match(/\A\s*\d+\s*\Z/) ? string : "NaN"
end

#'01 01' => 101
def my_parse_int(string)
  string[/[^\d ]/] ? 'NaN' : string.gsub(/ /, '').to_i
end

#'01 01' => 1
def my_parse_int(string)
  result = []
    string[/[^\d ]/] ? 'NaN' : arr = string.chars.map { |i| i.include?(' ') ? i : i.to_i }
      arr.each_with_index do |i, index|
        prev_i, next_i = arr[index-1], arr[index+1]
          result << i if (i.is_a?(Fixnum) && i >= 0 && (index == 0 || index == arr.size-1)) || i.is_a?(Fixnum) && i >=0 && prev_i.is_a?(Fixnum) && next_i.is_a?(Fixnum); end
    result.join.to_i
end
=end