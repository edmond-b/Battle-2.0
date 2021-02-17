require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  subject(:finished_game) {described_class.new(dead_player, player_2) }
  let(:player_1) { double :player, hit_points: 100 }
  let(:player_2) { double :player, hit_points: 100 }
  let(:dead_player) { double :player, hit_points: 0 }

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

  describe 'Current turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe 'Switch turns' do
    it 'switches the turn' do
      game.switch_turn
      expect(game.current_turn).to eq player_2
    end
  end

  describe 'Game over?' do
    it 'returns false if players still have HP' do
      expect(game.game_over?).to be false
    end

    it 'returns true if one player reaches 0HP' do
      expect(finished_game.game_over?).to be true
    end
  end

  describe 'Loser' do
    it 'returns the player who reached 0HP' do
      expect(finished_game.loser).to eq dead_player
    end
  end
end
