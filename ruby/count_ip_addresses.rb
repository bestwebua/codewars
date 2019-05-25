=begin
Count IP Addresses by Vladislav Trotsenko.

Write a function that accepts a starting and ending IPv4 address, and returns the number of IP
addresses from start to end, excluding the end IP address.
All input to the ipsBetween function will be valid IPv4 addresses in the form of strings.
The ending address will be at least one address higher than the starting address.

Examples:
ipsBetween("10.0.0.0", "10.0.0.50") => returns 50
ipsBetween("10.0.0.0", "10.0.1.0") => returns 256
ipsBetween("20.0.0.10", "20.0.1.0") => returns 246
=end

def ipsBetween(start, ending)
  result = [start, ending].map do |ip|
    ip.scan(/\d+/).map { |i| i.to_i.to_s(2) }.map do |i|
      zeroes = ''
        (8-i.size).times { zeroes << '0' }
      i.size == 8 ? i : i.insert(0, zeroes); end
    .join.to_i(2).to_s.to_i; end
  (result[0]-result[1]).abs
end

ipsBetween('160.0.0.0', '160.0.0.1')

=begin
#After refactoring code:
require 'ipaddr'
def ipsBetween(start, ending)
  [start, ending].map { |i| IPAddr.new(i).to_i }.reduce(:-).abs
end
=end