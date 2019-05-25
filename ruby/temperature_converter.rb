=begin
Temperature converter by Vladislav Trotsenko.

Write a function convert_temp(temp, from_scale, to_scale) converting temperature
from one scale to another. Return converted temp value.

Round converted temp value to an integer(!).
Reading: http://en.wikipedia.org/wiki/Conversion_of_units_of_temperature

possible scale inputs:
    "C"  for Celsius
    "F"  for Fahrenheit
    "K"  for Kelvin
    "R"  for Rankine
    "De" for Delisle
    "N"  for Newton
    "Re" for Réaumur
    "Ro" for Rømer

temp is a number, from_scale and to_scale are strings.
convert_temp(   100, "C",  "F") # => 212
convert_temp(    40, "Re", "C") # => 50
convert_temp(    60, "De", "F") # => 140
convert_temp(373.15, "K",  "N") # => 33
convert_temp(   666, "K",  "K") # => 666
=end

def convertTemp(temp, fs, ts)
	case fs
		when 'C' then def_temp = temp
		when 'F' then def_temp = (temp-32)*5.0/9.0
		when 'K' then def_temp = temp-273.15
		when 'R' then def_temp = (temp-491.67)*5.0/9.0
		when 'De' then def_temp = 100-(temp*2.0/3.0)
		when 'N' then def_temp = temp*(100.0/33.00)
		when 'Re' then def_temp = temp*(5.0/4.0)
		when 'Ro' then def_temp = (temp-7.5)*(40.0/21.0)
	end
	case ts
		when 'C' then temp = def_temp
		when 'F' then temp = (def_temp*9.0/5.0)+32
		when 'K' then temp = def_temp+273.15
		when 'R' then temp = (def_temp+273.15)*9.0/5.0
		when 'De' then temp = (100-def_temp)*3.0/2.0
		when 'N' then temp = def_temp*33.0/100.0
		when 'Re' then temp = def_temp*4.0/5.0
		when 'Ro' then temp = def_temp*21.0/40.0+7.5
	end
temp.round
end

convertTemp(100, "C", "F")


=begin
Super refactoring code:
def convertTemp temp, fs, ts
  (as,ao),(bs,bo) = {
    'De' => [-1, 0],
    'N'  => [11/50.0,  33],
    'Ro' => [ 7/20.0,  60],
    'Re' => [ 8/15.0,  80],
    'C'  => [ 2/ 3.0, 100],
    'K'  => [ 2/ 3.0, 373.15],
    'F'  => [ 6/ 5.0, 212],
    'R'  => [ 6/ 5.0, 671.67]
  }.fetch_values fs, ts
  ((temp-ao)*bs/as + bo).round
end
=end