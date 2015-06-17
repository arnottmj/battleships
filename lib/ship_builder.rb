require 'ship'

class ShipBuilder

  attr_reader :collection

  def initialize

    @collection = {aircraft_carrier: 5,
                   battleship:       4,
                   submarine:        3,
                   destroyer:        3,
                   patrol_boat:      2}
  end

  def create name
    raise 'collection is empty' if empty?
    ship = Ship.new(get_size(name))
    collection.delete(name)
    ship

  end

  def get_size(name)
    collection[name]
  end

  private


  def empty?
    collection.count <= 0
  end



end

