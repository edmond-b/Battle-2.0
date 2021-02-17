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

  def loser
    return @player_1 if @player_1.hit_points <= 0
    return @player_2 if @player_2.hit_points <= 0
  end

  def game_over?
    (@player_1.hit_points <= 0)||(@player_2.hit_points <= 0) ? true : false
  end
end
