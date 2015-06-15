require 'ship'

describe Ship do
  let(:ship) {Ship.new(1,1)}
  it 'saves a position' do
    expect(ship.position).to eq ([1,1])
  end

  it 'has a hit value' do
    ship.receive_hit
    expect(ship).to be_hit
  end

end
