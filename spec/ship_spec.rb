require 'ship'

describe Ship do

  it { is_expected.to respond_to :size= }

  # it "responds to #new with one arguments" do
  #   expect(subject).to respond_to(:new).with(1).argument
  # end  

  describe "size=" do
    
    it "sets the size of the ship" do
      subject.size=5
      expect(subject.size).to eq(5)
    end
  end

  # describe "#size" do
  #   it "responds with the appropriate size" do
  #     subject.size=5
  #     expect(subject.size).to eq(5)
  #   end
  # end


end
