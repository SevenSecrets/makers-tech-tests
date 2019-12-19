require_relative 'player'
require_relative 'field'
require_relative 'board'

class Game
  def initialize(player1 = Player.new('x'), player2 = Player.new('o'), board = Board.new)
    @player1 = player1
    @player2 = player2
    @player_list = [@player1, @player2]
    @board = board
    @board.populate_board
    @current_player = @player_list[0]
  end

  def print_gamestate
    @board.print_board
  end

  def turn(x_position, y_position)
    field = @board.full_board[x_position][y_position]
    @current_player.move(field)
    next_player
    print_gamestate
  end

  private

  def next_player
    if @current_player === @player_list[0]
      @current_player = @player_list[1]
    else
      current_player = @player_list[0]
    end
  end
end
