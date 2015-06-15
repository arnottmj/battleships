require_relative './ship'

class Board

  def initialize
    @occupied = false
  end

  def place(ship, location)
    @occupied = true
  end

  def occupied?
    @occupied
  end

end
