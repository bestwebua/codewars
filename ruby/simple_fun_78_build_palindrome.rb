=begin
Simple Fun #78: Build Palindrome by Vladislav Trotsenko.

Given a string str, find the shortest possible string which can be achieved by adding
characters to the end of initial string to make it a palindrome.

For str = "abcdc", the output should be "abcdcba".
Input/Output
[input] string str

A string consisting of lowercase latin letters.

Constraints: 3 ≤ str.length ≤ 10.
[output] a string

# abcdc 	=> abcdcba
# ababab	=> abababa
# aababa	=> aababaa
# gadb  	=> gadbdag
=end

class String
  def palindrome?
    self == self.reverse
  end
end

def build_palindrome(s)
  temp, s = [], s.chars
    stack = s.clone
      (s.size).times do |index|
        item = s[index...s.size].reverse
    	  temp << item if item.join.palindrome?
      end
    temp = temp.max.reverse
  	  s.reverse.reject.with_index { |item, index| item == temp[index] }
  	.each { |i| stack << i; break if stack.join.palindrome? }
  stack.join
end

build_palindrome('gadb')