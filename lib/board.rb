require_relative './ship'

class Board
  # uses a hash to look up status of each cell
  # constructs a board with a unique lookup for each cell
  # creates a set of ships with predetermined sizes
  # handles the placement of ships
  # raises errors for impossible requests (i.e. a request to place a ship wholly or partly off the board, or on top of another ship)
  # handles incoming missile strikes
  # knows the location of each ship
  # can tell a ship when it has been hit (and where it has been hit?)
  # can return the outcome of an airstrike

  attr_reader :spots
  def initialize
    @spots = create(10,10)
  end

  def create length, height
    no_of_elements = length * height
    @row_size = length
    i = 1
    position_hash = {}
    while i <= no_of_elements
      position_hash[i] = 'unoccupied'
      i += 1
    end
    position_hash
  end


  def place(ship, cell, direction)


    check_space ship , cell
    # fail "Ship cannot be placed here" if ship.size > @spots.keys.count
    @spots[cell] = ship
    if ship.size > 1
      if Board.method_defined? direction
        send direction, ship, cell
      end
    end
  end

  def occupied? cell
    @spots[cell] != 'unoccupied' && @spots[cell] != nil
  end

  def hit cell
    @spots[cell].hit if occupied? cell
  end


  protected

  def east(ship, cell)
    fail 'Ship cannot be placed here' if ship.size > (@row_size + 1) - cell % @row_size
    i = 1
    while i < ship.size
      check_space ship ,cell + i
      @spots[cell + i] = ship
      i += 1
    end
  end

  def west(ship,cell)
    fail 'Ship cannot be placed here' if ship.size > cell % @row_size
    i = 1
    while i < ship.size
      check_space ship ,cell - i
      @spots[cell - i] = ship
      i += 1
    end
  end

  def south(ship,cell)
    fail 'Ship cannot be placed here' if ship.size > (110 - cell)/10
    i = 1
    j = 10
    while i < ship.size
      check_space ship ,cell + j
      @spots[cell + j] = ship
      i += 1
      j += 10
    end
  end

  def north(ship, cell)
     i = 1
     j = -10
     while i < ship.size
       check_space ship, cell - j
       @spots[cell + j] = ship
       i += 1
       j -= 10
     end
  end

  private

  def check_space ship , cell
    fail "Space is occupied" if occupied?(cell)
    fail "Cannot place ships off the board" unless @spots.keys.include? cell
  end

end
