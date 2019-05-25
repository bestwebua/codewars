=begin
Alphabet war by Vladislav Trotsenko.

There is a war and nobody knows - the alphabet war!
There are two groups of hostile letters. The tension between left side letters
and right side letters was too high and the war began.

Write a function that accepts fight string consists of only small letters and
return who wins the fight. When the left side wins return Left side wins!,
when the right side wins return Right side wins!, in other case return Let's
fight again!.

The left side letters and their power:
w - 4
p - 3 
b - 2
s - 1

The right side letters and their power:
m - 4
q - 3 
d - 2
z - 1

The other letters don't have power and are only victims.
Example:

AlphabetWar("z");        //=> Right side wins!
AlphabetWar("zdqmwpbs"); //=> Let's fight again!
AlphabetWar("zzzzs");    //=> Right side wins!
AlphabetWar("wwwwwwz");  //=> Left side wins!
=end

def alphabet_war(fight)
  total_left = total_right = 0
    left, right = %w(s b p w), %w(z d q m)
      counter = fight.chars.group_by(&:itself).map { |key, value| [key, value.size] }.to_h
        [left, right].each_with_index do |arr, arr_index|
          arr.map.with_index { |item, index| [item, index+1] }.to_h.each do |key, value|
            arr_index.zero? ? total_left+=value*counter[key] : total_right+=value*counter[key] if counter.has_key?(key)
          end
        end
      winner = case
        when total_left > total_right then 'Left side wins!'
        when total_left < total_right then 'Right side wins!'
        else "Let's fight again!"
      end
    winner
end

alphabet_war('caabgzzbazd')