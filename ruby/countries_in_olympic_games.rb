=begin
Countries in Olympic Games by Vladislav Trotsenko.

In Olympic games countries are ranked based on the gold, and then silver,
and then bronze medals.

You get a list of countries in form of a dictionary; the key is the country
name, and the value is a string that indicate the number of gold, silver
and bronze medals.

list = {
  "China" => "54,32,44",
  "Korea" => "55,33,45",
  "Iraq" => "54,33,45",
  "Iran" => "54,33,45",
  "Norway" => "56,32,45",
  "Finland" => "55,34,45"
}

China has 54 gold medals, 32 silver medals and 44 bronze medals.
The result should be a string ordering the countries and separating them
by - In abovementioned example the output should be:

Norway-Finland-Korea-Iran-Iraq-China

If two counties get similar medals, then you sort them based on alphabetical order.
=end

def order_countries(list_of_countries)
  list_of_countries.each { |key, value| list_of_countries[key] = list_of_countries[key].gsub(/\D+,/, '').split(',').map(&:to_i) }.sort { |a,b| (a[1] <=> b[1]).nonzero? || (b[0] <=> a[0]) }.reverse.to_h.keys.join('-')
end

order_countries({"Paraguay"=>"Paraguay,113942,149030,323310", "Uruguay"=>"Uruguay,24709,519674,16683", "China"=>"China,275550,728143,25494", "Iran"=>"Iran,428961,438063,9826", "UEA"=>"UEA,587597,590633,174208", "Korea-N"=>"Korea-N,112098,11703,25040", "Germany"=>"Germany,102520,237449,442660", "Iraq"=>"Iraq,360058,592029,664551", "Norway"=>"Norway,35149,159242,794559", "Finland"=>"Finland,177447,654318,288166", "USA"=>"USA,618781,25920,481752", "Korea_S"=>"Korea_S,556992,355449,1852"})