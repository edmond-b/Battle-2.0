class Game
  attr_reader :player_1, :player_2, :current_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @current_turn = opponent
  end

  def opponent
    @current_turn == player_1 ? player_2 : player_1
  end
end
