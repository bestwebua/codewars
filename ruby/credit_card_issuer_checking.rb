=begin
Credit card issuer checking by Vladislav Trotsenko.

Given a credit card number we can determine who the issuer/vendor is
with a few basic knowns.

+============+=============+===============+
| Card Type  | Begins With | Number Length |
+============+=============+===============+
| AMEX       | 34 or 37    | 15            |
+------------+-------------+---------------+
| Discover   | 6011        | 16            |
+------------+-------------+---------------+
| Mastercard | 51-55       | 16            |
+------------+-------------+---------------+
| VISA       | 4           | 13 or 16      |
+------------+-------------+---------------+

Write a function (getIssuer(number) (get_issuer(number) for Python))
that will use the above known values to determine the card issuer given a card number.
If the number cannot be matched then the function should return the string Unknown.

Some sample numbers and their issuer:
getIssuer(4111111111111111) == "VISA"
getIssuer(4111111111111) == "VISA"
getIssuer(4012888888881881) == "VISA"
getIssuer(378282246310005) == "AMEX"
getIssuer(6011111111111117) == "Discover"
getIssuer(5105105105105100) == "Mastercard"
getIssuer(5105105105105106) == "Mastercard"
getIssuer(9111111111111111) == "Unknown"
=end

def getIssuer(number)
  number = number.to_s.chars.map(&:to_i)
    result = case number.size
      when 16 then
        if number[0..3] == [6, 0, 1, 1]
          'Discover'
    	elsif number[0] == 5 && number[1].between?(1, 5)
    	  'Mastercard'; end
      when 15 then 'AMEX' if number[0..1] == [3, 4] || number[0..1] == [3, 7]; end
  	result = 'VISA' if (number.size == 16 || number.size == 13) && number[0] == 4
  result.nil? ? 'Unknown' : result
end

getIssuer(371111111111111)

=begin
Super refactoring code:
def getIssuer(number)
  case number.to_s
    when /^3[47]\d{13}$/ then "AMEX"
    when /^6011.{12}$/ 	 then "Discover"
    when /^5[1-5].{14}$/ then "Mastercard"
    when /^4.{12,15}$/   then "VISA"
    else "Unknown"; end
end
=end