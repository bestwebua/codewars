=begin
Convert string to camel case by Vladislav Trotsenko.

Complete the method/function so that it converts dash/underscore delimited words into camel casing.
The first word within the output should be capitalized only if the original word was capitalized.

Examples:
# returns "theStealthWarrior"
to_camel_case("the-stealth-warrior") 

# returns "TheStealthWarrior"
to_camel_case("The_Stealth_Warrior")
=end

def to_camel_case(str)
	str.split(/[\s,_-]/).map.with_index { |item, index| index==0 ? item : item.capitalize }.join
end

to_camel_case('test-case')
to_camel_case('Test_case')

=begin
Super refactoring code:
def to_camel_case(str)
  str.gsub(/[-_]([a-z]+)/i){ $1.capitalize }
end
=end