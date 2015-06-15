require 'board'

describe Board do

  it "has a set of spots" do
    expect(subject).to respond_to(:spots)
  end

  it "responds to #place with three arguments" do
    expect(subject).to respond_to(:place).with(3).arguments
  end

  it "responds to #occupied?" do
    expect(subject).to respond_to(:occupied?)
  end

  it "checks that a given location is on the board" do
    expect(subject.spots).to include ["A", 1]
  end

  describe "occupied?" do

    it "responds true when space is occupied" do
      ship = double :ship, size: 1
      subject.place(ship, ["A", 1], :direction)
      expect(subject.occupied?).to eq(true)
    end

    it "responds false when space is unoccupied" do
      expect(subject.occupied?).to eq(false)
    end

  end


  describe "#place" do

    it "raises an error when placing a ship in an occupied space" do
      ship = double :ship, size: 1
      subject.place(ship, ["A", 1], :direction)
      expect { subject.place(:ship, :location, :direction) }.to raise_error 'Space is occupied'
    end

    it "raises an error when placing a ship in a space that doesn't exist" do
      expect { subject.place(:ship, ["A",2], :direction) }.to raise_error 'Cannot place ships off the board'
    end

    it "raises an error if there are not enough spots available for the whole ship" do
      bigship = double :bigship, size: subject.spots.count + 1
      expect { subject.place(bigship, ["A", 1], :west) }.to raise_error "Ship cannot be placed here"
    end
  end
end
