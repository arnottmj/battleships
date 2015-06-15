require_relative './ship'

class Board
  attr_reader :spots
  def initialize
    @occupied = false
  end

  def place(ship, location, direction)
    fail "Space is occupied" if @occupied
    @occupied = true
  end

  def occupied?
    @occupied
  end

end
