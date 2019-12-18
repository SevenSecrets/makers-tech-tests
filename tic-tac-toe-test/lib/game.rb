class Game
  def initialize(player1 = Player.new('x'), player2 = Player.new('o'))
    @player1 = player1
    @player2 = player2
  end
end
