require 'player'

describe Player do

  describe 'initialisation' do
    it 'exists' do
      expect(Player.new('x')).to be_instance_of Player
    end
  end
end
