require_relative 'attack'

class PhysicalAttack
  def initialize(str, agi)
      @damage = 0.4 * str + 0.4 * agi
  end

  def perform
    # Take probability of 10%
    if rand(100).between?(0, 10)
      puts "Critical Hit!"
      @damage *= 1.5
    end

    return @damage
  end
end
