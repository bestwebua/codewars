=begin
Basic Math (Add or Subtract) by Vladislav Trotsenko.

In this kata, you will do addition and subtraction on a given string.
The return value must be a 'string'.

Example: calculate('1plus2plus3minus4') should return '2'.
=end

def calculate(str)
  eval(str.gsub(/plus|minus/, { 'plus' => '+', 'minus' => '-' })).to_s
end


calculate('1minus2minus3minus4')

=begin
def calculate(str)
	result, str = 0, str.scan(/\d+|plus|minus/).map { |i| /\d/.match(i) ? i.to_i : i }
		str.each_with_index do |item, index|
			pred_item = str[index-1]
			  if item.is_a?(Fixnum)
			    case
			      when index == 0 || pred_item == 'plus' then result+=item
			      when pred_item == 'minus' then result-=item
			    end
			  end
		end
	result.to_s
end
=end