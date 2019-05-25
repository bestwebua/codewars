=begin
Rock Paper Scissors! by Vladislav Trotsenko.

=end

class Player

  @@total_players = 0

  attr_reader :name, :beat
  attr_accessor :winner

  def initialize(beat)
    @name = "Player #{@@total_players+=1}"
    @beat = beat
    @winner = nil
  end

  def lets_beat(other_player)
    beatmap = {'paper' => 'rock', 'rock' => 'scissors', 'scissors' => 'paper'}
    case other_player.beat
      when beatmap[self.beat] then self.winner = true and "#{self.name} won!"
      when beatmap.invert[self.beat] then other_player.winner = true and "#{other_player.name} won!"
      else 'Draw!'
    end
  end

end

players = (1..6).map { |player| Player.new(['paper', 'rock', 'scissors'].sample) }
players.each_slice(2) { |player1, player2| player1.lets_beat(player2) }
players.select(&:winner)

=begin
def rps(p1, p2)
  beatmap = {'paper' => 'rock', 'rock' => 'scissors', 'scissors' => 'paper'}
    case p2
      when beatmap[p1] then 'Player 1 won!'
      when beatmap.invert[p1] then 'Player 2 won!'
      else 'Draw!'
    end
end

def rps(p1, p2)
  winner, players = [['paper', 'rock'], ['rock', 'scissors'], ['scissors', 'paper']], [p1, p2] 
    case
      when winner.include?(players) then 'Player 1 won!'
      when winner.map(&:reverse).include?(players) then 'Player 2 won!'
      else 'Draw!'
    end
end

rps('paper', 'paper')
=end