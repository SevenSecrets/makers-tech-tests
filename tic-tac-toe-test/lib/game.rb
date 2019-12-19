require_relative 'player'
require_relative 'field'
require_relative 'board'

class Game
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
    if @turn_counter == 9
      puts "GAME OVER -- DRAW"
      @result = "DRAW"
      return true
    else
      full_board = @board.print_board.split("\n")
      full_board.each do |row|
        if row == "[x][x][x]" || row == "[o][o][o]"
          @result = "WIN"
          return true
        end 
      end
    end
    return false
  end
end
