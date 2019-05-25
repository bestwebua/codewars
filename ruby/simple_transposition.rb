=begin
Simple transposition

Simple transposition is a basic and simple cryptography technique.
We make 2 rows and put first a letter in the Row 1, the second in
the Row 2, third in Row 1 and so on until the end. Then we put the
text from Row 2 next to the Row 1 text and thats it.

Complete the function that recieves a string and encrypt it with
this simple transposition.

So the result string will be: "Sml etipetx"
=end

def simple_transposition(text)
  text.chars.partition.with_index { |_, index| index.even? }.join
end
