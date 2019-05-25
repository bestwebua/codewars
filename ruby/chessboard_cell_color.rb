=begin
Chess Fun #1: Chess Board Cell Color by Vladilav Trotsenko.

Given two cells on the standard chess board, determine whether they
have the same color or not.

For cell1 = "A1" and cell2 = "C3", the output should be true.
=end

def chessboard_cell_color(cell1, cell2)
  chess_board = ('A'..'H').to_a.product(('1'..'9').to_a)
  chess_board.index(cell1.chars).even? == chess_board.index(cell2.chars).even?
end

chessboard_cell_color('H3', 'A3')

=begin
#OOP solution
class Field
  attr_accessor :number, :letter, :color

  def ==(other)
    self.color == other.color
  end

  def initialize(str)
    dict = (1..8).each_with_object({}) do |number, hash|
      hash[number] = [] and('A'..'H').to_a.each { |letter| hash[number] << letter + number.to_s }; end
        @number = str[/\d/].to_i
      @letter = dict[@number].index(str)+1
    @color = [number, letter].all?(&:odd?) || [number, letter].all?(&:even?) ? 'black' : 'white'
  end

end

def chessboard_cell_color(cell1, cell2)
  [cell1, cell2].map { |item| Field.new(item).color }.group_by(&:itself).keys.size == 1
end
=end