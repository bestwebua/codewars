=begin
Help Suzuki pack his coal basket! by Vladislav Trotsenko.


Suzuki is preparing for a walk over fire ceremony high up in the mountains and
the monks need coal for the fire. He must pack a basket of coal to the optimal
level for each trip up the mountain. He must fit as much as possible into his
basket. He can either take a piece of coal or leave it so he must chose which
pieces will be optimal for the trip based on the weight in order to maximize
the basket capacity.

10 ≤ basket ≤ 200

1 ≤ pile ≤ 100

You will be given a data structure similar to the one below:
pile = 'dust 1 dust 4 dust 8 dust 100 dust'
basket = 43

Return the weight of the coal:
'The basket weighs 13 kilograms'

basket = 50
pile = 'dust83dust 45 25 22 46'

Returns:
'The basket weighs 47 kilograms'
=end

def dp(set, set_size, sum)
  matrix = []; (sum+1).times { matrix << Array.new(set_size+1, 0) }
    for i in 1..set_size
      for j in 1..sum
        if j < set[i-1]
          matrix[j][i] = matrix[j][i-1]
        else
          matrix[j][i] = [matrix[j][i-1], set[i-1] + matrix[j-set[i-1]][i-1]].max
        end
      end
    end
  matrix.flatten.max
end

def pack_basket(basket, pile)
  if basket.between?(9, 200)
    pile = pile.scan(/\d+/).map(&:to_i).select { |i| i <= basket }
    pile_max = dp(pile, pile.size, basket)
  end
  pile_max ||= 0
  "The basket weighs #{pile_max} kilograms"
end

pack_basket(23, 'dust9dust dust 25 dust dust 50 dust9dust dust 76 dust3dustdust dust 123 dust dust 131 dust56dust dust 128 dust56dust dust 183 dust9dust dust 13 dust dust 143 dust9dust dust 159 dust3dustdust dust 63 dust3dustdust dust 190 dust3dustdust dus')

=begin
def pack_basket(basket,pile)
  if basket.between?(9, 200)
    pile = pile.scan(/\d+/).map(&:to_i).select { |i| i <= basket }
    pile_max = pile.permutation.map {|i| i.inject(0) { |sum, i| sum+i <= basket ? sum+i : sum } }.max
  end
  pile_max ||= 0
  "The basket weighs #{pile_max} kilograms"
end

def pack_basket(basket,pile)
  if basket.between?(9, 200)
    pile = pile.scan(/\d+/).map(&:to_i).sort.keep_if { |i| i <= basket}
    pile_max = pile.permutation.to_a.uniq.map {|i| i.inject(0) { |sum, i| sum+i <= basket ? sum+i : sum } }.max
  else pile_max = 0; end
  "The basket weighs #{pile_max} kilograms"
end
=end