=begin
RGB To Hex Conversion by Vladislav Trotsenko.

The rgb() method is incomplete. Complete the method so that passing
in RGB decimal values will result in a hexadecimal representation
being returned. The valid decimal values for RGB are 0 - 255.

Any (r,g,b) argument values that fall out of that range should be
rounded to the closest valid value.

The following are examples of expected output values:
rgb(255, 255, 255) # returns FFFFFF
rgb(255, 255, 300) # returns FFFFFF
rgb(0,0,0) # returns 000000
rgb(148, 0, 211) # returns 9400D3
=end

def rgb(*rgb)
  rgb.map { |i| i.clamp(0, 255).to_s(16).upcase.ljust(2, '0') }.join
end

rgb(148, 0, 211)

=begin
def rgb(*rgb)
  rgb.map { |i| [0, i, 255].sort[1].to_s(16).upcase.ljust(2, '0') }.join
end

def rgb(*rgb)
  rgb.map { |i| i.positive? ? i > 255 ? 255 : i : 0  }.map { |i| i.to_s(16).upcase.ljust(2, '0') }.join
end
=end