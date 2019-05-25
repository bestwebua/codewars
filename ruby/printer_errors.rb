=begin
Printer Errors by Vladislav Trotsenko.

In a factory a printer prints labels for boxes.
For one kind of boxes the printer has to use colors which, for the sake of
simplicity, are named with letters from a to m.

The colors used by the printer are recorded in a control string.
For example a "good" control string would be aaabbbbhaijjjm meaning that the
printer used three times color a, four times color b, then one time color a...

Sometimes there are problems: lack of colors, technical malfunction and a "bad"
control string is produced e.g. aaaxbbbbyyhwawiwjjjwwm.

You have to write a function printer_error which given a string will output the
error rate of the printer as a string representing a rational whose numerator is the
number of errors and the denominator the length of the control string. Don't reduce
this fraction to a simpler expression.

The string has a length greater or equal to one and contains only letters from a to z.

s="aaabbbbhaijjjm"
error_printer(s) => "0/14"

s="aaaxbbbbyyhwawiwjjjwwm"
error_printer(s) => "8/22"

=end

def printer_error(s)
	colors = s.chars
	total = colors.length
	errors = 0

	colors.each do |color|
	 	if ('n'..'z').cover?(color)
	 	errors += 1; end
 	end

 	errors.to_s + '/' + total.to_s

end

s="abcdxyz"
printer_error(s)

=begin
Super refactoring code!

def printer_error(s)
  "#{s.count('n-z')}/#{s.length}"
end

=end