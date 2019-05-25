=begin
Change Machine by Vladislav Trotsenko.

Implement a change function that performs at O(n) (we will test for this).
The function will accept an integer parameter that represents cents, and returns
the optimal change using the least number of coins.

The function should return a hash containing a key for each coin of US currency
(specifically 25¢ 10¢ 5¢ and 1¢ coins -- don't use 50¢ or 100¢ coins). The value
of each coin should represent the count of each coin in the change.

The function should return a hash with all coin count values set to 0 if the
cents parameter is less than or equal to 0.
=end

def change(cents)
  cents = 0 if cents.negative?
    coins = {25=>0, 10=>0, 5=>0, 1=>0}
      until cents==0
        max_coin = coins.to_a.map(&:first).select { |coin| coin <= cents}.max
          coins[max_coin]+=cents/max_coin
        cents%max_coin == 0 ? cents-=cents : cents=cents%max_coin
      end
  coins
end

change(6384798272555335)

=begin
Super refactoring code:
def change(cents)
  a = [25, 10, 5, 1].map do |coin|
    n, cents = (cents < 0 ? 0 : cents).divmod(coin)
    [coin, n]
  end
  Hash[a]
end

Super refactoring code:
def change(cents)
  a = [25, 10, 5, 1].map do |coin|
    n, cents = (cents < 0 ? 0 : cents).divmod(coin)
    [coin, n]
  end
  Hash[a]
end

Before refactoring code:
def change(cents)
  cents = 0 if cents.negative?
  coins = {25=>0, 10=>0, 5=>0, 1=>0}
    until cents==0
      max_coin = coins.to_a.map(&:first).select { |coin| coin <= cents}.max
       coins[max_coin]+=1
  	  cents-=max_coin
    end
  coins
end
=end