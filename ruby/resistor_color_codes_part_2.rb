=begin
Resistor Color Codes, Part 2 by Vladislav Trotsenko.

Your function will receive a string containing the ohms value you need,
followed by a space and the word "ohms" (to avoid Codewars unicode headaches
I'm just using the word instead of the ohms unicode symbol). The way an ohms
value is formatted depends on the magnitude of the value:

For resistors less than 1000 ohms, the ohms value is just formatted as
the plain number. For example, with the 47-ohm resistor above, your function
would receive the string "47 ohms", and return the string `"yellow violet
black gold".

For resistors greater than or equal to 1000 ohms, but less than 1000000 ohms,
the ohms value is divided by 1000, and has a lower-case "k" after it.
For example, if your function received the string "4.7k ohms", it would need
to return the string "yellow violet red gold".

For resistors of 1000000 ohms or greater, the ohms value is divided by 1000000,
and has an upper-case "M" after it. For example, if your function received the
string "1M ohms", it would need to return the string "brown black green gold".

For instance:
"10 ohms"        "brown black black gold"
"100 ohms"       "brown black brown gold"
"220 ohms"       "red red brown gold"
"330 ohms"       "orange orange brown gold"
"470 ohms"       "yellow violet brown gold"
"680 ohms"       "blue gray brown gold"
"1k ohms"        "brown black red gold"
"10k ohms"       "brown black orange gold"
"22k ohms"       "red red orange gold"
"47k ohms"       "yellow violet orange gold"
"100k ohms"      "brown black yellow gold"
"330k ohms"      "orange orange yellow gold"
"2M ohms"        "red black green gold"
=end

def encode_resistor_colors(ohms_string)
result, step, stack = '', 0, []
  marking = %w(black brown red orange yellow green blue violet gray white)
    num = ohms_string.sub(/ ohms/, '').to_f
      multiplier = case ohms_string[/k|M/]
        when 'k' then 1000
        when 'M' then 1000000
        else 1; end
      value = (num*multiplier).round.to_s
    value.each_char do |char|
      step <= 1 ? result << marking[char.to_i] + ' ' : stack << char
        step+=1
      result << marking[stack.size] if step == value.size
    end
  result << ' gold'
end

encode_resistor_colors('100k ohms')