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
      printed_row = row.map do |field|
        field.print_field
      end
      printed_row << "\n"
      printed_row.join("")
    end
    printed_board.join("")
  end
end
