=begin
Explosive Sum by Vladislav Trotsenko.

In number theory and combinatorics, a partition of a positive integer n,
also called an integer partition, is a way of writing n as a sum of
positive integers.

Two sums that differ only in the order of their summands are considered
the same partition. If order matters, the sum becomes a composition.
For example, 4 can be partitioned in five distinct ways:

4
3 + 1
2 + 2
2 + 1 + 1
1 + 1 + 1 + 1

Examples:
sum(2) # 2  -> 1+1 , 2
sum(3) # 3 -> 1+1+1, 1+2, 3
sum(4) # 5 -> 1+1+1+1, 1+1+2, 1+3, 2+2, 4
sum(5) # 7 -> 1+1+1+1+1, 1+1+1+2, 1+1+3, 1+2+2, 1+4, 5, 2+3
sum(10) # 42
=end

def partition(largest, rest=[], &block)
  block.call #([largest]+rest)
    (rest.first || 1).upto(largest/2) do |i|
      partition(largest-i, rest.unshift(i), &block)
    end
end

def exp_sum(n, total=0)
  return 0 if n.negative?
  partition(n) { total+=1 } and total
end

exp_sum(42)