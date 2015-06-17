class Player

  def initialize board

    @board = board

  end

  def place ship, cell, direction

    @board.place(ship, cell, direction)



  end

end