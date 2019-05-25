=begin
Replace every nth by Vladislav Trotsenko.

Write a method, that replaces every nth char oldValue with char newValue.

Method:
replace_nth (text, n, old_value, new_value)

Example:
n:         2
oldValue: 'a'
newValue: 'o'
"Vader said: No, I am your father!" -> "Vader soid: No, I am your fother!"
  1     2          3        4       -> 2nd and 4th occurence are replaced

Your method has to be case sensitive!
As you can see in the example: The first changed is the 2nd 'a'. So the
start is always at the nth suitable char and not at the first!

If n is 0 or negative or if it is larger than the count of the oldValue,
return the original text without a change.

The text and the chars will never be null.
=end

def replace_nth(text, n, old_value, new_value)
  return text if n < 1
    text.gsub(old_value).with_index do |item, index|
      (index+1)%n == 0 ? new_value : old_value
    end
end

replace_nth("Vader said: No, I am your father!", 2, 'a', 'o')