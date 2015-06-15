class Board

  attr_reader :board

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

  def hit (x,y)
    if board[x][y] != :w
      board[x][y] = :X
    end
  end


end
