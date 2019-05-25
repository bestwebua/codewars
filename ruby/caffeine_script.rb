=begin
Caffeine Script by Vladislav Trotsenko.

Complete the function caffeineBuzz, which takes a non-zero integer as it's one argument.
If the integer is divisible by 3, return the string "Java".
If the integer is divisible by 3 and divisible by 4, return the string "Coffee"
If the integer is one of the above and is even, add "Script" to the end of the string.
Otherwise, return the string "mocha_missing!"

caffeineBuzz(1)   => "mocha_missing!"
caffeineBuzz(3)   => "Java"
caffeineBuzz(6)   => "JavaScript"
caffeineBuzz(12)  => "CoffeeScript"
=end

def caffeineBuzz(n)
  result = case
    when n%3==0 && n%4==0 then 'Coffee'
    when n%3==0 then 'Java'
    else 'mocha_missing!'; end
  n.even? && result!='mocha_missing!' ? result << 'Script' : result
end

caffeineBuzz(6)

=begin
Super refactoring code:
def caffeineBuzz(n)
  "#{n % 12 == 0 ? 'Coffee' : (n % 3 == 0 ? 'Java' : '')}#{'Script' if n % 6 == 0 }".sub /^$/, 'mocha_missing!'
end
=end