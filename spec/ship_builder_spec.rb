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
  end

  describe 'get_size' do
    it 'return size of a given symbol' do
      expect(subject.get_size(:aircraft_carrier)).to eq 5
    end
  end

end
