require "./engine/board"
require "./engine/board_mapping"
require "./engine/match"
require "./engine/movement_helper"

RSpec.describe Board do
  it "white pawn movement" do
    board = Board.new
    board.movement("e2e4")
    expect(board.get_square("e2")).to eq(0)
    expect(board.get_square("e4")).to eq(1)
  end

  it "black pawn movement" do
    board = Board.new
    board.movement("a7a6")
    expect(board.get_square("a7")).to eq(0)
    expect(board.get_square("a6")).to eq(-1)
  end

  it "pawns invalid movements" do
    board = Board.new
    board.movement("e2e5")
    expect(board.get_square("e2")).to eq(1)
    expect(board.get_square("e5")).to eq(0)
  end
end
