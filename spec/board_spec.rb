require "./engine/board"
require "./engine/board_mapping"
require "./engine/match"

RSpec.describe Board do
  it "must be 64 squares" do
    board = Board.new
  end
  it "kings" do
    board = Board.new
    expect(board.get_square("e8")).to eq(-6)
    expect(board.get_square("e1")).to eq(6)
  end
  it "towers" do
    board = Board.new
    expect(board.get_square("a8")).to eq(-2)
    expect(board.get_square("h8")).to eq(-2)
    expect(board.get_square("a1")).to eq(2)
    expect(board.get_square("h1")).to eq(2)
  end

end
