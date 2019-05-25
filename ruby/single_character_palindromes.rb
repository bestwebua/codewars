=begin
Single character palindromes by Vladislav Trotsenko.

You will be given a string and you task is to check if it is possible to convert
that string into a palindrome by removing a single character. If the string is
already a palindrome, return "OK". If it is not, and we can convert it to a
palindrome by removing one character, then return "remove one", otherwise return
"not possible". The order of the characters should not be changed.

For example:

solve("abba") = "OK". -- This is a palindrome
solve("abbaa") = "remove one". -- remove the 'a' at the extreme right. 
solve("abbaab") = "not possible".
=end

def solve(string)
  result = 'not possible'
    if string == string.reverse
      result = 'OK'
    else
      for index in 0...string.size
        palindrome = string[0...index] + string[index+1..-1]
        result = 'remove one' and break if palindrome == palindrome.reverse
      end
    end
  result
end

solve('abba')