=begin
First Variation on Caesar Cipher by Vladislav Trotsenko.

=end

def movingShift(s, shift)
  dict = ('a'..'z').to_a
    part_size = (s.size/5.0).ceil
      result = s.chars.map.with_index do |char, index|
        unless char[/[a-zA-Z]/].nil?
          tmp_char = dict.rotate(shift+index)[dict.index(char.downcase)]
          char == char.upcase ? tmp_char.upcase : tmp_char
        else
          char
        end
      end.join.scan(/.{1,#{part_size}}/)
    result << '' if (s.size%4).zero?
  result
end

movingShift(' uoxIirmoveNreefckgieaoiEcooqo', 2)

def demovingShift(arr, shift)
  dict, s = ('a'..'z').to_a, arr.join
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

demovingShift([" xscOp", "zvygqA", "ftuwud", "adaxmh", "Edqrut"], 2)
demovingShift(["J vltasl rlhr ", "zdfog odxr ypw", " atasl rlhr p ", "gwkzzyq zntyhv", " lvz wp!!!"], 1)
