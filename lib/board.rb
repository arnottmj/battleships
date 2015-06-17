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

  attr_reader :spots, :hits, :misses, :unique_ships
  def initialize
    @spots = create(10,10)
    @hits = []
    @misses = []
    @unique_ships = []
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
    check_space cell
    # fail "Ship cannot be placed here" if ship.size > @spots.keys.count
    if ship.size > 1
      if Board.method_defined? direction
        send direction, ship, cell
      else
        fail 'Incorrect direction'
      end
    end
    @spots[cell] = ship
    @unique_ships << ship
  end


  def occupied? cell
    @spots[cell] != 'unoccupied' && @spots[cell] != nil
  end


  def hit cell
    all_attempts = hits + misses
    fail 'Noooooooo' if all_attempts.include? cell
    fail "Cannot place ships off the board" unless @spots.keys.include? cell
    if occupied? cell
      @spots[cell].hit
      hits << cell
    else
      misses << cell
    end
  end


  protected

  def east(ship, cell)
    fail 'Ship cannot be placed here' if ship.size > (@row_size + 1) - cell % @row_size
    i = 1
    while i < ship.size
      check_space cell + i
      @spots[cell + i] = ship
      i += 1
    end
  end

  def west(ship,cell)
    fail 'Ship cannot be placed here' if ship.size > cell % @row_size
    i = 1
    while i < ship.size
      check_space cell - i
      @spots[cell - i] = ship
      i += 1
    end
  end

  def south(ship,cell)
    fail 'Ship cannot be placed here' if ship.size > (110 - cell)/10
    i = 1
    j = 10
    while i < ship.size
      check_space cell + j
      @spots[cell + j] = ship
      i += 1
      j += 10
    end
  end

  def north(ship, cell)
     i = 1
     j = -10
     while i < ship.size
       check_space cell - j
       @spots[cell + j] = ship
       i += 1
       j -= 10
     end
  end

  private

  def check_space cell
    fail "Space is occupied" if occupied?(cell)
    fail "Cannot place ships off the board" unless @spots.keys.include? cell
  end

end
