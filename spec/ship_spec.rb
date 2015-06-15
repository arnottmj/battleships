describe Ship do

  it 'saves a position' do
    ship = Ship.new (1,1)
    expect(ship.position).to eq ([1,1])
  end

end