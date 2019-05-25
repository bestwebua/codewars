=begin
Checkerboard Generation by Vladislav Trotsenko.

Write a method checkerboard/Checkerboard which takes an integer
size and returns a checkerboard of dimensions size x size. There
are two colored squares on the checkerboard. Red squares are
represented by the string [r] and black squares are represented
by the string [b]. You MUST use the newline character \n to
insert a newline at the end of each row.

The top left corner should be a red square.
Each row should have alternating squares in the row.
The starting square on each row should also alternate.

Assumptions

You can assume you are given an integer size.
You cannot assume positive values.
Thus you should return an empty string for negative sizes and a size of 0. (An empty string does not have a newline ending).
ou should assume the newline character used is \n.
You MUST leave a newline character at the end of the full checkerboard thus allowing the board to be on its own if you were to run in a terminal.

Examples:

puts checkerboard(5);
[r][b][r][b][r]
[b][r][b][r][b]
[r][b][r][b][r]
[b][r][b][r][b]
[r][b][r][b][r]
=end

def checkerboard(size)
  string = case
    when size < 1 then ''
    when size == 1  then "[r]\n"
    else
      chars, index, string, stack = ['[r]', '[b]'], 0, [], ''
        size.times do
          for i in 0...size
            stack << chars[index]
            index.zero? ? index = 1 : index = 0
          end
          string << stack and stack = ''
          index = string.last[1] == 'r' ? 1 : 0
        end
    string.join("\n") + "\n"
  end
  string
end

puts checkerboard(8)