require 'board'

describe Board do
  it 'creates a board with 10 columns' do
    expect(subject.create.count).to eq 10
  end

  it 'creates a board with 10 rows' do
    expect(subject.create[0].count).to eq 10
  end

  # describe 'Add' do
  #   it 'adds a boat with size 1' do
  #     board = Board.new
  #     board.create
  #     expect(board.add()).to eq 1
  #   end

  #   it 'checks if boat is added to the array' do
  #     game = Board.new
  #     game.create
  #     expect(game.add(1,1)).to eq game.board[1][1]
  #   end
  # end

  describe 'add' do
    it 'adds a boat' do
      ship = double :ship, position: [2,2]
      board = Board.new
      board.create
      expect(board.add(ship)).to eq ship
    end
  end



end
