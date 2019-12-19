require 'game'

describe Game do
  before(:each) do
    @player1 = double('player', :fill => "x")
    @player2 = double('player', :fill => "o")
    @field = double('field', :fill_in => "")
    @board = double('board', :populate_board => [[@field, @field, @field],[@field, @field, @field],[@field, @field, @field]])
  end

  describe 'initialisation' do
    it 'exists' do
      expect(Game.new).to be_instance_of(Game)
    end

    it 'accepts parameters it needs' do
      expect(Game.new(@player1, @player2, @board)).to be_instance_of(Game)
    end
  end

  describe '#print_gamestate' do
    before(:each) do
      @game = Game.new
    end
    it "prints the gamestate when it's empty" do
      expect(@game.print_gamestate).to eq "[][][]\n[][][]\n[][][]\n"
    end

  end
end
