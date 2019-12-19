class Field
  def initialize
    @field = ''
  end

  def fill_in(token)
    @field = token
  end

  def print_field
    "[#{@field}]"
  end
end
