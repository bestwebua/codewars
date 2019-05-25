=begin
IPv4 Validator by Vladislav Trotsenko.

In this kata you have to write a method to verify the validity of IPv4 addresses.
=end

def ip_validator(ip)
  /[^\d.]/ !~ ip && ip.split('.').size==4 && !ip.split('.').any?(&:empty?) ?
    ip.split('.').map(&:to_i).all? { |i| i.between?(0, 255) } : false
end

ip_validator('1.168.254.1')

=begin
describe "Basic tests of local IP's" do
  Test.assert_equals(ip_validator('10.0.0.1'), true)
  Test.assert_equals(ip_validator('169.254.0.0'), true)
  Test.assert_equals(ip_validator('172.16.0.0'), true)
  Test.assert_equals(ip_validator('192.168.0.1'), true)
end

describe "Basic tests of internet IP's" do
  Test.assert_equals(ip_validator('174.129.25.170'), true)
  Test.assert_equals(ip_validator('221.186.184.75'), true)
  Test.assert_equals(ip_validator('8.8.8.8'), true)
end

describe "Basic tests of ugly wrong IP's" do
  Test.assert_equals(ip_validator('800.23.09.12'), false)
  Test.assert_equals(ip_validator('114.23.54.69.42'), false)
  Test.assert_equals(ip_validator('.0.0.1'), false)
  Test.assert_equals(ip_validator('.0.0.'), false)
  Test.assert_equals(ip_validator('19216801'), false)
  Test.assert_equals(ip_validator('Kevin Mitnick IPv7.0'), false)
  Test.assert_equals(ip_validator('14.290.11.12'), false)
  Test.assert_equals(ip_validator('aa:38:fj:29:jf'), false)
  Test.assert_equals(ip_validator('-12.344.43.11'), false)
end

describe "Random tests of xxx.xxx.xxx.xxx IP's" do
    rand(1..10).times do
      octet1, octet2, octet3, octet4 = rand(0..300), rand(0..300), rand(0..300), rand(0..300)
        ip = "#{octet1}.#{octet2}.#{octet3}.#{octet4}"
          result = /[^\d.]/ !~ ip && ip.split('.').size==4 && !ip.split('.').any?(&:empty?) ? ip.split('.').map(&:to_i).all? { |i| i.between?(0, 255) } : false
            Test.it("Testing for IP's") do
              Test.assert_equals(ip_validator(ip), result)
      end
  end
end
=end