
require_relative 'game'
describe Game do
  let(:game) { Game.new("test") }

  it "checks if guessed letter is in array" do
    expect(game.letters_guessed("t")).to eq [true, false, false, true]
  end

  it "prints the current status of the game" do
    game.letters_guessed("e")
    game.letters_guessed("t")
    expect(game.status).to eq ["t","e","_","t"]
  end

  it "check win (win case)" do
    game.letters_guessed("e")
    game.letters_guessed("t")
    game.letters_guessed("s")
    expect(game.win).to eq true
  end
  it "check win (losing case)" do
    game.letters_guessed("e")
    game.letters_guessed("t")
    expect(game.win).to eq false
  end

end

