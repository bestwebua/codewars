=begin
Moves in squared strings (I) by Vladisalv Trotsenko.

This kata is the first of a sequence of four about "Squared Strings".
You are given a string of n lines, each substring being n characters long:

For example:
s = "abcd\nefgh\nijkl\nmnop"

We will study some transformations of this square of strings.
Vertical mirror: vert_mirror (or vertMirror or vert-mirror)
vert_mirror(s) => "dcba\nhgfe\nlkji\nponm"

Horizontal mirror: hor_mirror (or horMirror or hor-mirror)
hor_mirror(s) => "mnop\nijkl\nefgh\nabcd"
=end


def vert_mirror(s)
  s.split("\n").map(&:reverse).join("\n")
end

def hor_mirror(s)
  s.split("\n").reverse.join("\n")
end

def oper(fct, s)
  fct.call(s)
end

oper('vertMirror', "hSgdHQ\nHnDMao\nClNNxX\niRvxxH\nbqTVvA\nwvSyRu")

=begin
#Before refactoring code:
def oper(fct, s)
  fct.name == :vert_mirror ? vert_mirror(s) : hor_mirror(s)
end
=end