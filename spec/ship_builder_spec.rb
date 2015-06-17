require './lib/ship_builder'

describe ShipBuilder do
  it 'it responds to collection' do
    expect(subject).to respond_to :collection
  end

  it 'creates a hash with length 5' do
    expect(subject.collection.length).to eq 5
  end

  describe 'create' do
    it 'responds to create' do
      expect(subject).to respond_to :create
    end

    it 'creates a ship' do
      expect(subject.create(:aircraft_carrier)).to be_instance_of(Ship)
    end

    it 'removes ship from hash after use' do
      subject.create(:aircraft_carrier)
      expect(subject.collection.length).to eq 4
    end

    it 'raises error when empty' do
      subject.create(:aircraft_carrier)
      subject.create(:battleship)
      subject.create(:submarine)
      subject.create(:destroyer)
      subject.create(:patrol_boat)

      expect{subject.create(:destroyer)}.to raise_error 'collection is empty'
    end

    it 'raises an error when a ship is not in the collection' do
      expect{subject.create(:x)}.to raise_error 'invalid ship name'
    end
  end

  describe 'get_size' do
    it 'return size of a given symbol' do
      expect(subject.get_size(:aircraft_carrier)).to eq 5
    end
  end

end
