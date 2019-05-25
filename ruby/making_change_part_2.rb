=begin
Making Change: Part 2

=end

class Currency
  attr_reader :denominations

  def initialize(denominations)
    @denominations = denominations
  end

  def num_ways(amount)
    number_of_ways = [1, 1]
    (2..amount).each do |current_amount|
      current_number_of_ways = 0
      denominations.reverse_each do |current_coin_value|
        next if current_coin_value > current_amount
        current_number_of_ways += number_of_ways[current_amount - current_coin_value]
      end
      number_of_ways << current_number_of_ways
    end
    number_of_ways.last
  end

  def min_change(amount)
    result = 0
    denominations.each do |coin|
      total_coins = amount / coin
      next if total_coins.zero?

      result += total_coins
      amount %= coin
    end
    result
  end
end

c = Currency.new([5, 3, 1])
c.min_change(100)
p c.num_ways(500)
