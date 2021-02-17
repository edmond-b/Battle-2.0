class Player
  attr_reader :name, :hit_points
  HIT_POINTS = 100

  def initialize(name)
    @name = name
    @hit_points = HIT_POINTS
  end

  def receive_damage
    @hit_points -= rand(1..20)
  end
end
