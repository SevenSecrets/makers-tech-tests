require 'player'

describe Player do

  describe 'initialisation' do
    it 'exists' do
      expect(Player.new('x')).to be_instance_of Player
    end
  end

  describe 'move' do

    before(:each) do
      @player = Player.new('x')
      @field = double("field")
    end

    it 'can make a move' do
      expect(@player).to respond_to(:move)
    end

    it 'fills in a field' do
      allow(@field).to receive(:fill_in).and_return("x")
      expect(@player.move(@field)).to eq "x"
    end
  end
end
