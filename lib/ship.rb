class Ship

  attr_reader :position, :size

  def initialize (sixe,x,y)
    @position = [x,y]
    @hit = false
    @size=size
  end

  def receive_hit
    @hit = true
  end

  def hit?
    @hit
  end


end
