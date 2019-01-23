require "./engine/match"
require "./engine/board"

RSpec.describe Match do
  it "need a board" do
    match = Match.new
    expect(match.board).to be_a(Board)
  end

  it "board needs to be private" do
    match = Match.new
    expect { match.board = nil }.to raise_error(NoMethodError)
  end
end
