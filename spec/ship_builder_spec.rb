require './lib/ship_builder'

describe ShipBuilder do
  it 'it responds to collection' do
    expect(subject).to respond_to :collection
  end

  it 'creates a hash with length 5' do
    expect(subject.collection.length).to eq 5
  end

  it 'responds to create' do
    expect(subject).to respond_to :create
  end

end
