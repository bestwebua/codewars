=begin
Most Frequent Weekdays by Vladislav Trotsenko.

What is your favourite day of the week? Check if
it's the most frequent day of the week in the year.

You are given a year as integer (e. g. 2001). You
should return the most frequent day(s) of the week
in that year. The result has to be a list of days
sorted by the order of days in week
(e. g. ['Monday', 'Tuesday']). Week starts with
Monday.

Input: Year as an int.
Output: The list of most frequent days sorted by the
order of days in week (from Monday to Sunday).

Preconditions: Year is between 1 and 9999. Week starts
with Monday. Calendar is Gregorian.

Example:
most_frequent_days(2427) == ['Friday']
most_frequent_days(2185) == ['Saturday']
most_frequent_days(2860) == ['Thursday', 'Friday']

In Ruby years will start from 1593.
=end

require 'date'

def most_frequent_days(year)
  days = (Date.new(year)...Date.new(year+1)).map(&:wday).group_by(&:itself).map { |k, v| [k, v.size] }.to_h
  days.map { |day, count| Date::DAYNAMES.rotate[day-1] if count == days.values.max }.compact
end

most_frequent_days(2860)
