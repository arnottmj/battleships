class Ship

  attr_reader :position

  def initialize (x,y)
    @position = [x,y]
    @hit = false
  end

  def receive_hit
    @hit = true
  end

  def hit?
    @hit
  end


end
