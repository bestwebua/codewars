=begin
Simple Fun #29: Is MAC48 Address? by Vladislav Trotsenko.
A media access control address (MAC address) is a unique identifier assigned to network interfaces
for communications on the physical network segment.

The standard (IEEE 802) format for printing MAC-48 addresses in human-friendly form is six groups
of two hexadecimal digits (0 to 9 or A to F), separated by hyphens (e.g. 01-23-45-67-89-AB).

For inputString = "00-1B-63-84-45-E6", the output should be true;
For inputString = "Z1-1B-63-84-45-E6", the output should be false;
For inputString = "not a MAC-48 address", the output should be false.
=end

def is_mac_48_address(address)
  !!address[/^(\h{2}-){5}\h{2}$/i]
end

is_mac_48_address('AA-1B-63-84-45-B4')