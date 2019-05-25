=begin
Moves in squared strings (II) by Vladisalv Trotsenko.

You are given a string of n lines, each substring being n characters long:

For example:
s = "abcd\nefgh\nijkl\nmnop"
We will study some transformations of this square of strings.

Clock rotation 180 degrees: rot
rot(s) => "ponm\nlkji\nhgfe\ndcba"
selfie_and_rot(s) (or selfieAndRot or selfie-and-rot) It is initial string + string
obtained by clock rotation 180 degrees with dots interspersed in order (hopefully)
to better show the rotation when printed.

s = "abcd\nefgh\nijkl\nmnop" --> 
"abcd....\nefgh....\nijkl....\nmnop....\n....ponm\n....lkji\n....hgfe\n....dcba"

or printed:

|rotation        |selfie_and_rot
|abcd --> ponm   |abcd --> abcd....
|efgh     lkji   |efgh     efgh....
|ijkl     hgfe   |ijkl     ijkl....   
|mnop     dcba   |mnop     mnop....
                           ....ponm
                           ....lkji
                           ....hgfe
                           ....dcba

#Task:
Write these two functions rotand selfie_and_rot

and high-order function oper(fct, s) where fct is the function of one variable f
to apply to the string s (fct will be one of rot, selfie_and_rot)
=end

def rot(s)
  s.split("\n").map(&:reverse).reverse.join("\n")
end

def selfie_and_rot(s)
  selfie = s.split("\n").map { |i| i << '.'*i.size }.join("\n") + "\n"
  selfie + rot(selfie)
end

def oper(fct, s)
  fct.call(s)
end

selfie_and_rot("abcd\nefgh\nijkl\nmnop")