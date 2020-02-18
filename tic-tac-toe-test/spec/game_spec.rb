require 'game'

describe Game do
  describe 'initialisation' do
    it 'exists' do
      expect(Game.new).to be_instance_of(Game)
    end

    it 'accepts parameters it needs' do
      expect(Game.new(Player.new('x'), Player.new('y'), Board.new)).to be_instance_of(Game)
    end
  end

  describe '#print_gamestate' do
    before(:each) do
      @game = Game.new
    end

    it "prints the gamestate when it's empty" do
      expect(@game.print_gamestate).to eq "[][][]\n[][][]\n[][][]\n"
    end

    it "prints the gamestate when moves have been made" do
      @game.turn(0, 0)
      expect(@game.print_gamestate).to eq "[x][][]\n[][][]\n[][][]\n"
    end
  end

  describe '#turn' do
    before(:each) do
      @game = Game.new
    end

    it 'changes the gamestate' do
      first_gamestate = @game.turn(1, 1)
      @game.turn(0, 0)
      expect(@game.print_gamestate).not_to eq first_gamestate
    end

    it 'changes player each time' do
      @game.turn(0, 0)
      expect(@game.turn(0, 1)).to eq "[x][o][]\n[][][]\n[][][]\n"
    end
  end

  describe 'game over' do
    before(:each) do
      @game = Game.new
    end

    it 'is a draw' do
      @game.turn(0, 0)
      @game.turn(1, 0)
      @game.turn(2, 0)
      @game.turn(0, 1)
      @game.turn(0, 2)
      @game.turn(1, 1)
      @game.turn(1, 2)
      @game.turn(2, 2)
      expect(@game.turn(2, 1)).to eq "GAME OVER -- DRAW"
    end

    it 'player 1 wins' do
      @game.turn(0, 0)
      @game.turn(1, 2)
      @game.turn(0, 1)
      @game.turn(1, 1)
      expect(@game.turn(0, 2)).to eq "GAME OVER -- WIN"
    end

    it 'player 1 wins with vertical' do
      @game.turn(0, 0)
      @game.turn(0, 1)
      @game.turn(1, 0)
      @game.turn(0, 2)
      expect(@game.turn(2, 0)).to eq "GAME OVER -- WIN"
    end
  end
end
