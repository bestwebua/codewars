=begin
Switch it Up! by Vladislav Trotsenko.
When provided with a number between 0-9, return it in words.
=end

def switch_it_up(number)
  %w(Zero One Two Three Four Five Six Seven Eight Nine)[number] 
end

switch_it_up(1)