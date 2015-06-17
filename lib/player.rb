class Player

  def initialize board

    @board = board

  end

  def place ship, cell, direction

    @board.place(ship, cell, direction)

  end

  def hit cell
    @board.hit(cell)
  end

  def win?
    count = 0
    @board.spots.each do |k,value|
      if value.instance_of? Ship
        if value.sunk?
          count += 1
        end
      end
    end

    if @board.num_of_ships == count
      true
    end

  end
end
