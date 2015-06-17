require 'player'

describe Player do
  let(:board) {double :board}
  subject {Player.new(board)}
  
  it 'can place a ship on the board' do
    expect(board).to receive(:place)
    subject.place(:ship,:cell,:direction)
  end

  it 'can place a hit on the board' do
    expect(board).to receive(:hit)
    subject.hit(:ship,:cell,:direction)

  end
end