=begin
Resistor Color Codes by Vladislav Trotsenko.

The way the ohms value needs to be formatted in the string you return depends on the magnitude of the value:
For resistors less than 1000 ohms, return a string containing the number of ohms, a space, the word "ohms"
followed by a comma and a space, the tolerance value (5, 10, or 20), and a percent sign. For example, for
the "yellow violet black" resistor mentioned above, you would return "47 ohms, 20%".

For resistors greater than or equal to 1000 ohms, but less than 1000000 ohms, you will use the same format
as above, except that the ohms value will be divided by 1000 and have a lower-case "k" after it.
For example, for a resistor with bands of "yellow violet red gold", you would return "4.7k ohms, 5%"

For resistors of 1000000 ohms or greater, you will divide the ohms value by 1000000 and have an
upper-case "M" after it. For example, for a resistor with bands of "brown black green silver",
you would return "1M ohms, 10%"

Test case resistor values will all be between 10 ohms and 990M ohms.

"brown black black"                "10 ohms, 20%"
"brown black brown gold"          "100 ohms, 5%"
"red red brown"                   "220 ohms, 20%"
"orange orange brown gold"        "330 ohms, 5%"
"yellow violet brown silver"      "470 ohms, 10%"
"blue gray brown"                 "680 ohms, 20%"
"brown black red silver"           "1k ohms, 10%"
"brown black orange"              "10k ohms, 20%"
"red red orange silver"           "22k ohms, 10%"
"yellow violet orange gold"       "47k ohms, 5%"
"brown black yellow gold"        "100k ohms, 5%"
"orange orange yellow gold"      "330k ohms, 5%"
"red black green gold"             "2M ohms, 5%"
=end

def decode_resistor_colors(bands)
  marking = { 'black' => 0, 'brown' => 1, 'red' => 2, 'orange' => 3, 'yellow' => 4, 'green' => 5, 'blue' => 6, 'violet' => 7, 'gray' => 8, 'white' => 9, 'gold' => 5, 'silver' => 10 }
    bands = bands.split.map { |i| marking[i] }
      multiplier = 10**bands[2]
      value = (bands.first(2).join.to_i)*multiplier
        value_result = case
          when value < 1000 then "#{value}"
          when value.between?(1000, 999999) then "#{value/1000.0}k"
          when value >= 1000000 then "#{value/1000000.0}M"
        end
      bands.size == 4 ? tolerance = bands.last : tolerance = 20
    "#{value_result.sub(/\.0/, '')} ohms, #{tolerance}%"
end

decode_resistor_colors('brown black green silver')