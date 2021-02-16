require 'player'

describe class Player

  describe "Player name" do
    it "Can show the player name" do
      player_1 = Player.new("Player 1")
      expect(player_1.name).to eq("Player 1")
    end
  end
end
