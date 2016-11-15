require_relative 'attack_factory'
require_relative 'set'

class Hero
  attr_reader :name
  attr_accessor :armor, :int, :agi, :str

  def initialize(name, armor, int, agi, str)
    @name = name
    @int = int
    @agi = agi
    @str = str
    # composite
    @armor = Set.new
    @attack_factory = AttackFactory.new(self)
  end

  def hit(type)
    print "Damage is "
    @attack_factory.attack(type).perform
  end

  # alias to Set.add
  def equip(armor)
    @armor.add(armor)
    puts 'Now I have ' << armor.name
  end

  def disarm(armor)
    @armor.remove(armor)
    puts 'I do not want this item anymore'
  end

  def total_str
    @str + @armor.str
  end

  def total_agi
    @agi + @armor.agi
  end

  def total_int
    @int + @armor.int
  end

  def talk
    puts "My name is " << name
  end

end
