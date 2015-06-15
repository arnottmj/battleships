require 'board'

describe Board do
  
  it "responds to #place with two arguments" do
    expect(subject).to respond_to(:place).with(2).arguments
  end

end
