require 'player'

describe Player do
  let(:ship) {double :ship, instance_of?: true, sunk?: true}
  let(:board) {double :board, num_of_ships: 3, hits: [1], misses: [2], unique_ships: [ship,ship,ship]}
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

  it 'will allow user to see their hits' do
    expect(subject.hit_locations).to eq [1]
  end

  it 'will allow user to see their misses' do
    expect(subject.miss_locations).to eq [2]
  end


end
