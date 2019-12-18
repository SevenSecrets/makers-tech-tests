require 'game'

describe Game do
  before(:each) do
    @player1 = double('player', :fill => "x")
    @player2 = double('player', :fill => "o")
  end

  describe 'initialisation' do
    it 'exists' do
      expect(Game.new(@player1, @player2)).to be_instance_of(Game)
    end
  end
end
