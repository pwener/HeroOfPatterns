require_relative 'attack'

class MagicAttack < Attack
  def initialize(int)
    @damage = int
  end

  def perform
    # Sort a number between (0, 100)
    # Look if he belong to a range between (0, 5)
    if rand(100).between?(0, 5)
      @damage *= 2.5
    end

    return @damage
  end
end
