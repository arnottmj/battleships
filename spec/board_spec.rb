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
    let(:board) {Board.new}
    before(:each) {board.create}
    before(:each) {board.add(ship)}
    it 'adds a boat' do
      expect(board.add(ship)).to eq ship
    end

    it 'checks if boat is added to the array' do
      expect(board.add(ship)).to eq board.board[2][2]
    end

    it 'adds a ship with length > 1' do
      boat = double :boat, position: [2,2], size: 2
      expect(board.board[2][3]).to eq ship
    end
  end

  describe 'hit' do
    let(:ship) {double :ship, position: [2,2], receive_hit: true }
    let(:game) {Board.new}

    before(:each) {game.create}
    before(:each) {game.add(ship)}
    it 'changes to X when hit' do
      game.hit(2,2)
      expect(game.board[2][2]).to eq :X
    end
    it 'changes to O when there is no ship' do
      game.hit(2,3)
      expect(game.board[2][3]).to eq :O
    end
    it 'change the hit value of the ship if hit' do
      expect(ship).to receive(:receive_hit)
      game.hit(2,2)
    end


  end



end
