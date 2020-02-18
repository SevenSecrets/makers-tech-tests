require_relative 'player'
require_relative 'field'
require_relative 'board'

class Game

  WIN_STATES = [
    [],
  ]
  def initialize(player1 = Player.new('x'), player2 = Player.new('o'), board = Board.new)
    @player1 = player1
    @player2 = player2
    @player_list = [@player1, @player2]
    @board = board
    @current_player = @player_list[0]
    @turn_counter = 0
  end

  def print_gamestate
    @board.print_board
  end

  def turn(x_position, y_position)
    field = @board.full_board[x_position][y_position]
    @current_player.move(field)
    next_player
    @last_turn_x = x_position
    @last_turn_y = y_position
    @turn_counter += 1
    if check_if_game_over
      return "GAME OVER -- #{@result}"
    end
    print_gamestate
  end

  private

  def next_player
    if @current_player === @player_list[0]
      @current_player = @player_list[1]
    else
      @current_player = @player_list[0]
    end
  end

  def check_if_game_over
    if check_if_draw
      return true
    elsif check_if_win
      return true
    end
    return false
  end

  def check_if_draw
    if @turn_counter == 9
      puts "GAME OVER -- DRAW"
      @result = "DRAW"
      return true
    end
    return false
  end

  def check_if_win
    p gamestate = print_gamestate.split("\n")
    if WIN_STATES.include? gamestate
      return true
    end
    return false
  end
end
