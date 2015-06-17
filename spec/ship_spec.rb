require 'ship'

describe Ship do

  it { is_expected.to respond_to :size }
  it { is_expected.to respond_to :sunk?}

  it 'responds to #hit' do

    expect(subject).to respond_to :hit

  end

  # it "responds to #new with one arguments" do
  #   expect(subject).to respond_to(:new).with(1).argument
  # end

  describe "size=" do

    it "sets the size of the ship" do
      ship = Ship.new(5)
      expect(ship.size).to eq(5)
    end
  end

  describe 'hit' do

    it 'registers a strike' do
      subject.hit
      expect(subject).to be_hit
    end

  end

  describe 'sunk' do

    it 'can get sunk' do
      ship = Ship.new(3)
      3.times { ship.hit }
      expect(ship).to be_sunk

    end

  end

  # describe "#size" do
  #   it "responds with the appropriate size" do
  #     subject.size=5
  #     expect(subject.size).to eq(5)
  #   end
  # end


end
