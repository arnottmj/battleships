require_relative './ship'

class Board
  attr_reader :spots
  def initialize
    @occupied = false
    @spots = [["A",1]]
  end

  def place(ship, location, direction)
    fail "Space is occupied" if @occupied
    fail "Cannot place ships off the board" unless @spots.include? location
    fail "Ship cannot be placed here" if ship.size > @spots.count
    @occupied = true
  end

  def occupied?
    @occupied
  end

end
