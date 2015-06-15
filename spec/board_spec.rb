require 'board'

describe Board do
  it 'creates a board with 10 columns' do
    expect(subject.create.count).to eq 10
  end

  it 'creates a board with 10 rows' do
    expect(subject.create[0].count).to eq 10
  end

  describe 'add' do
    let(:ship) {double :ship, position: [2,2]}

    it 'adds a boat' do
      board = Board.new
      board.create
      expect(board.add(ship)).to eq ship
    end

    it 'checks if boat is added to the array' do
      game = Board.new
      game.create
      expect(game.add(ship)).to eq game.board[2][2]
    end
  end



end
