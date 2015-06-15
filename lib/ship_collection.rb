class ShipCollection

  def create
    @collection = {aircraft_carrier: 5,
                   battleship: 4,
                   submarine: 3,
                   destroyer: 3,
                   patrol_boat: 2}
  end
end
