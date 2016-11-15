require_relative 'physical_attack'
require_relative 'magic_attack'

class AttackFactory
  attr_reader :hero

  def initialize(hero)
    @hero = hero
  end

  def attack(type)
    case type
    when :physical
      then PhysicalAttack.new(hero.total_str, hero.total_agi)
    when :magical
      then MagicAttack.new(hero.total_int)
    end
  end
end
