class Player

  def initialize board
    @board = board
  end

  def place ship, cell, direction
    @board.place(ship, cell, direction)
  end

  def hit_locations
    @board.hits
  end

  def miss_locations
    @board.misses
  end

  def hit cell
    @board.hit(cell)

  end

  def lose?
    count = 0
    @board.unique_ships.each do |value|
      if value.sunk?
        count += 1
      end
    end

    @board.unique_ships.count == count
  end

end
