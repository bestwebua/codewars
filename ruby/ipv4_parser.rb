=begin
IPv4 Parser by Vladislav Trotsenko.

Problem Statement
Write a function that takes two string parameters, an IP (v4) address and a
subnet mask, and returns two strings: the network block, and the host identifier.

The function does not need to support CIDR notation.
Description
A single IP address with subnet mask actually specifies several addresses:
a network block, and a host identifier, and a broadcast address. These addresses
can be calculated using a bitwise AND operation on each bit.
=end

require 'ipaddr'
def ipv4_parser(ip_addr, mask)
  net_block = IPAddr.new("#{ip_addr}/#{mask}").to_s
    ip_addr.split('.').zip(net_block.split('.'))
    host_id = ip_addr.split('.').zip(net_block.split('.')).map { |a, b| a.to_i - b.to_i }.join('.')
  [net_block, host_id]
end

ipv4_parser('192.168.50.1', '255.255.255.0')