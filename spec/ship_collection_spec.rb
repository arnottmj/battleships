

describe ShipCollection do


  it 'creates a group of 5 boats of different sizes' do
    fleet = ShipCollection.new
    expect(fleet.count).to eq(5)
  end



end
