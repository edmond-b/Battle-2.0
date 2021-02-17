require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe 'Player 1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe 'Player 2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe 'Player Attack' do
    it 'damages the other player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
