class Player
  def initialize(token)
    @token = token
  end

  def move(field)
    field.fill_in(@token)
  end
end
