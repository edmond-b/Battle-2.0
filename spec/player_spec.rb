require 'player'

describe Player do
  subject(:player_1) { Player.new('Player 1') }
  subject(:player_2) { Player.new('Player 2') }

  describe "Player name" do
    it "Can show the player name" do
      expect(player_1.name).to eq("Player 1")
    end
  end

  describe 'Player HP' do
    it 'returns the HP' do
      expect(player_1.hit_points).to eq described_class::HIT_POINTS
    end
  end

  describe 'Player Attack' do
    it 'damages the other player' do
      expect(player_2).to receive(:receive_damage)
      player_1.attack(player_2)
    end
  end

  describe 'Player recive damage' do
    it 'Reduces the players HP' do
      expect{ player_1.receive_damage }.to change{ player_1.hit_points }.by(-10)
    end
  end
end
