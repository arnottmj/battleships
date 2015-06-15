require_relative './ship'

class Board
  attr_reader :spots
  def initialize
    @occupied = false
    @spots = {1 => "unoccupied"}
  end

  def place(ship, cell, direction)

    # start with cell and move in direction for size number of cells
    # call check cell
    # fail if any call to check cell fails

    fail "Space is occupied" if occupied?(cell)
    fail "Cannot place ships off the board" unless @spots.keys.include? cell
    fail "Ship cannot be placed here" if ship.size > @spots.keys.count

    @spots[cell] = "occupied"
  end

  def occupied? cell
    @spots[cell] == "occupied"
  end

  def check_cell cell
    # checks one by one if cell is free
    # occupied? cell
  end

end
