=begin
Categorize New Member by Vladislav Trotsenko

The Western Suburbs Croquet Club has two categories of membership, Senior and Open.
They would like your help with an application form that will tell prospective members
which category they will be placed.

To be a senior, a member must be at least 55 years old and have a handicap greater than 7.
In this croquet club, handicaps range from -2 to +26; the better the player the lower the handicap.

Example Input
[[18, 20],[45, 2],[61, 12],[37, 6],[21, 21],[78, 9]]

Example Output
["Open", "Open", "Senior", "Open", "Open", "Senior"]

=end

def openOrSenior(data)
members = Array.new
data.each do |member| member.dig(0) >= 55 && (member.dig(1)) > 7 ? members.push("Senior") : members.push("Open"); end
data = Array.new(members)
end

openOrSenior([[34, 16], [35, 4], [79, 23], [34, 22], [12, 22]])


=begin
Super refactoring code:

def openOrSenior(data)
  data.map { |age, handicap| age >= 55 && handicap > 7 ? "Senior" : "Open" }
end	

=end