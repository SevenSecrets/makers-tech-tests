class Board

  attr_reader :full_board

  def initialize
    @full_board = []
  end

  def populate_board
    3.times do
      row = [Field.new, Field.new, Field.new]
      @full_board << row
    end
    @full_board
  end

  def print_board
    printed_board = @full_board.map do |row|
      row.each do |field|
        field.print_field
      end
      "\n"
    end
  end
end
