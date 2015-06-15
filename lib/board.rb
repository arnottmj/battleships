class Board

  def create
    @board=[[:w,:w,:w,:w,:w,:w,:w,:w,:w,:w],
            [:w,:w,:w,:w,:w,:w,:w,:w,:w,:w],
            [:w,:w,:w,:w,:w,:w,:w,:w,:w,:w],
            [:w,:w,:w,:w,:w,:w,:w,:w,:w,:w],
            [:w,:w,:w,:w,:w,:w,:w,:w,:w,:w],
            [:w,:w,:w,:w,:w,:w,:w,:w,:w,:w],
            [:w,:w,:w,:w,:w,:w,:w,:w,:w,:w],
            [:w,:w,:w,:w,:w,:w,:w,:w,:w,:w],
            [:w,:w,:w,:w,:w,:w,:w,:w,:w,:w],
            [:w,:w,:w,:w,:w,:w,:w,:w,:w,:w]]
  end


  def add (ship)
    x = ship.position[0]
    y = ship.position[1]
    @board[x][y] = ship
  end


end