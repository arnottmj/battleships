require 'player'

describe Player do
  let(:ship) {double :ship, instance_of?: true, sunk?: true}
  let(:board) {double :board, spots: {1 => ship, 2 => ship, 3 => ship}, num_of_ships: 3}
  subject {Player.new(board)}

  it 'can place a ship on the board' do
    expect(board).to receive(:place)
    subject.place(:ship,:cell,:direction)
  end

  it 'can place a hit on the board' do
    expect(board).to receive(:hit)
    subject.hit(:cell)
  end

  describe 'win?' do
    it 'returns true when player has won' do

      expect(subject).to be_win

    end
  end
end
