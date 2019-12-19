require 'board'

describe Board do
  describe 'initialisation' do
    it 'exists' do
      expect(Board.new).to be_instance_of Board
    end
  end

  describe '#populate_board' do
    it 'creates a full board' do
      board = Board.new
      expect(board.populate_board).to be_instance_of Array
    end
  end

  describe '#print_board' do
    it 'prints a full board' do
      board = Board.new
      expect(board.print_board).to eq "[][][]\n[][][]\n[][][]\n"
    end
  end

end
