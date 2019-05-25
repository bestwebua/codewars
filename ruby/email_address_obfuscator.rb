=begin
Email Address Obfuscator by Vladislav Trotsenko.

Many people choose to obfuscate their email address when displaying it on the Web.
One common way of doing this is by substituting the @ and . characters for their literal
equivalents in brackets.

user_name@example.com
=> user_name [at] example [dot] com

af5134@borchmore.edu
=> af5134 [at] borchmore [dot] edu

jim.kuback@ennerman-hatano.com
=> jim [dot] kuback [at] ennerman-hatano [dot] com
=end

def obfuscate(email)
  email.gsub(/[@.]/, '@' =>' [at] ', '.' => ' [dot] ')
end

obfuscate('user@domain.com')

=begin
>> "hello".sub('l', '*')  => "he*lo"
>> "hello".gsub('l', '*') => "he**o"
=end