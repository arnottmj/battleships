require 'ship_collection'

describe ShipCollection do


  it 'creates a group of 5 boats of different sizes' do
    collection = ShipCollection.new
    fleet = collection.create
    expect(fleet.length).to eq(5)
  end



end
