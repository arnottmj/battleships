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
    if ship.size > 1
      i = 1
      while i < @board[x][y].size
        @board[x][y + i] = ship
        i += 1
      end
    end
    @board[x][y]
  end

  def hit (x,y)
    if board[x][y] != :w
      board[x][y].receive_hit
      board[x][y] = :X
    else
      board[x][y] = :O
    end
  end


end

