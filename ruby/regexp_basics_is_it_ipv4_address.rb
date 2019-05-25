=begin
Regexp Basics - is it IPv4 address? by Vladislav Trotsenko.

Implement String#ipv4_address?, which should return true if given object is an IPv4
address - four numbers (0-255) separated by dots. It should only accept addresses
in canonical representation, so no leading 0s, spaces etc.
=end

class String
  def ipv4_address?
    !!self[/\A((1\d|[1-9]|2[0-4])?\d|25[0-5])(\.\g<1>){3}\z/] #\g<1> means to re-run the first group's regex again
  end
end

'127.0.0.1'.ipv4_address?

=begin
Before refactoring code #4:
class String
  def ipv4_address?
    ip_range = /(\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])/
    !!self[/\A(#{ip_range}\.){3}#{ip_range}\z/]
  end
end

Before refactoring code #3:
class String
  def ipv4_address?
    !!self[/\A((\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])\.){3}(\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])\z/]
  end
end

Before refactoring code #2:
class String
  def ipv4_address?
    !!self[/\A(([\d]|[1-9][\d]|1[\d][\d]|2[0-4][\d]|25[0-5])\.){3}([\d]|[1-9][\d]|1[\d][\d]|2[0-4][\d]|25[0-5])\z/]
  end
end

Before refactoring code #1:
class String
  def ipv4_address?
    !!self[/\A(([\d]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}([\d]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\z/]
  end
end
=end