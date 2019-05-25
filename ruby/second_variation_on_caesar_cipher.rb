=begin
Second Variation on Caesar Cipher by Vladislav Trotsenko.


=end

def encode_str(s, shift)
  dict = ('a'..'z').to_a
    part_size = (s.size/5.0).ceil
      result = s.chars.map.with_index do |char, index|
        unless char[/[a-zA-Z]/].nil?
          tmp_char = if index.zero?
              dict.rotate(shift+index)[dict.index(char.downcase)]
            else
              dict.rotate(shift+index)[dict.rotate(index).index(char.downcase)]
            end
          if index.zero?
            char.downcase + tmp_char + (char == char.upcase ? tmp_char.upcase : tmp_char)
          else
            char == char.upcase ? tmp_char.upcase : tmp_char
          end 
        else
          char
        end
      end.join.scan(/.{1,#{part_size}}/)
    result << '' if (s.size%4).zero?
  result
end

encode_str('I should have known that you would have a perfect answer for me!!!', 1)


def decode(arr)
  dict, s = ('a'..'z').to_a, arr[2..-1].join
  shift = 1 #dict.index(arr[1])-dict.index(arr[0])
    shift = s.size+shift-1
      s.chars.reverse_each.map.with_index do |char, index|
        unless char[/[a-zA-Z]/].nil?
          tmp_char = dict.rotate(index-shift)[dict.index(char.downcase)]
          char == char.upcase ? tmp_char.upcase : tmp_char
        else
          char
        end
      end.reverse.join
end

p decode(["ijJ tipvme ibw", "f lopxo uibu z", "pv xpvme ibwf ", "b qfsgfdu botx", "fs gps nf!!!"])