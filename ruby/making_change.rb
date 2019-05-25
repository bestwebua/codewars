=begin
Making Change by Vladislav Trotsenko.

Write a method make_change (makeChange in JavaScript) that will determine the minimum number
of coins needed to make change for a given amount in American currency.

Coins used will be half-dollars, quarters, dimes, nickels, and pennies, worth 50¢, 25¢, 10¢,
5¢ and 1¢, respectively. They'll be represented by the symbols H, Q, D, N and P
(symbols in Ruby).

The argument passed in will be an integer representing the value in cents. The return value
should be a hash (an object in JavaScript) with the symbols as keys, and the numbers of coins
as values. Coins that are not used should not be included in the hash. If the argument passed
in is 0, then the method should return an empty hash.

Examples:
make_change(0) --> {}
make_change(1) --> {:P=>1}
make_change(43) --> {:Q=>1, :D=>1, :N=>1, :P=>3}
make_change(91) --> {:H=>1, :Q=>1, :D=>1, :N=>1, :P=>1}
=end

def make_change(amount)
  denomination_coins, count_of_coins, coins_by_par = [1, 5, 10, 25, 50], [], Hash.new(0)
  	until amount == 0
  	  max_coint = denomination_coins.select { |coin| coin <= amount }.max
  	    count_of_coins << max_coint
  	  amount-=max_coint
  	end
  	count_of_coins.each do |coin|
  	  assign_par = case coin
  	    when 1  then :P
  	    when 5  then :N
  	    when 10 then :D
  	    when 25 then :Q
  	    when 50 then :H; end
  	  coins_by_par[assign_par]+=1
    end
  coins_by_par
end

make_change(99)

=begin
Super refactoring code:
def make_change(amount)
  coins = { H: 50, Q: 25, D: 10, N: 5, P: 1 }
  coins.each_with_object({}) { |(k, v), h| h[k], amount = amount/v, amount%v if amount >= v }
end
=end