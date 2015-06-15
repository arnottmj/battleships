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

  describe 'hit' do
    let(:ship) {double :ship, position: [2,2]}
    it 'changes to X when hit' do
      game = Board.new
      game.create
      game.add(ship)
      game.hit(2,2)
      expect(game.board[2][2]).to eq :X
    end
    it 'changes to O when there is no ship' do
      game = Board.new
      game.create
      game.add(ship)
      game.hit(2,3)
      expect(game.board[2][3]).to eq :O
    end
  end



end
