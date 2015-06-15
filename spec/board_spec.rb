require 'board'

describe Board do

  it "responds to #place with three arguments" do
    expect(subject).to respond_to(:place).with(3).arguments
  end

  it "responds to #occupied?" do
    expect(subject).to respond_to(:occupied?)
  end

  describe "occupied" do
    it "responds true when space is occupied" do
      subject.place(:ship, :location, :direction)
      expect(subject.occupied?).to eq(true)
    end

    it "responds false when space is unoccupied" do
      expect(subject.occupied?).to eq(false)
    end

  end

  describe "#place" do

  end
end
