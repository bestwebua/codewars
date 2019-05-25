=begin
Next bigger number with the same digits by Vladislav Trotsenko.

You have to create a function that takes a positive integer number and returns the next
bigger number formed by the same digits:

next_bigger(12)==21
next_bigger(513)==531
next_bigger(2017)==2071

If no bigger number can be composed using those digits, return -1:

next_bigger(9)==-1
next_bigger(111)==-1
next_bigger(531)==-1
=end

def next_bigger(n)
  chars = n.to_s.chars
    (0..chars.size-2).reverse_each do |i|
      (i+1..chars.size-1).reverse_each do |j|
        if chars[i] < chars[j]
          chars[i], chars[j] = chars[j], chars[i]
        return (chars.first(i+1)+chars.last(chars.size-1-i).sort).join.to_i
        end
      end
    end
  -1
end

next_bigger(2071)

=begin
def next_bigger(n)
  n.to_s.chars.permutation.map(&:to_i).find { |i| i > n }
end
=end