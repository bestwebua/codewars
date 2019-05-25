=begin
Gas Calculator by Vladislav Trotsenko.

Calculate the amount of money that is used in traveling a distance of x miles,
if gas costs $2.00 per gallon, and your car gets 25 miles per gallon.

Our method can calculate two types of fuel consumption: city and highway. By default it
calculated for city driving, otherwise for highway. Miles may be float number. It is logical
result round to the nearest hundredth. And we have a brilliant kata :)
=end

class Float
	def roundf(float)
		sprintf("%.#{float}f",self).to_f
	end
end

def calc_gas(miles, type='city')
  miles = miles.to_f
  type == 'city' ? (miles*2/25).roundf(2) : (miles*2/15).roundf(2)
end

calc_gas(100)