=begin
Decimals or groups of thousands? by Vladislav Trotsenko.

Countries such as the U.S. and China use a dot to represent a decimal point,
they also use a comma to seperate groups of thousands e.g. 4,353.56

Other countries (mostly in Europe) instead use a comma to represent a decimal
point, they also use a dot to seperate groups of thousands e.g. 4.353,56

Your task is to sum up an array of string repensentation of numbers being in
one of the two formats mentioned above with AT MOST two decimal places.
The resulted sum should be a string with the format of xx,xxx.xx (keep two
decimal places, seperate groups of thousands with comma if necessary)

This Kata is inspired by one of the bugs that almost happened due to the
differences in number formatting.
=end
class Float
  def to_th
    '%.2f' % self
  end
end

def sum_up_numbers(arr)
  dot, comma = '.', ','
    whole, decimal = arr.map { |number|
      number = case
        when number.index(dot) < number.index(comma) then number.tr('.', '')
        else number.tr(',', '')
      end if number.include?(dot) && number.include?(comma)
      number = case
      when number.count(dot) > 1 || number.count(comma) > 1 then number.tr(',.', '').to_i
        when number.include?(dot) then number.to_f
        when number.include?(comma) then number.sub(/,/, '.').to_f
        else number.to_i
      end
    }.inject(:+).round(2).to_th.scan(/\d+/)
  whole.gsub(/(?<=\d)(?=(?:\d{3})+\z)/, ',') + '.' + decimal
end


sum_up_numbers(['4.44', '8', '14,56'])