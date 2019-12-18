require_relative 'player'
require_relative 'field'
require_relative 'board'

class Game
  def initialize(player1 = Player.new('x'), player2 = Player.new('o'), board = Board.new)
    @player1 = player1
    @player2 = player2
    @board = board
  end
end
