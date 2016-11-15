require_relative 'armor'

# Its a composite
class Set < Armor
  def initialize
    @full_armor = []
  end

  def add(armor)
    unless item_is_equiped?(armor)
      @full_armor << armor
    else
      puts 'Item already equiped!'
    end
  end

  def remove(armor)
    @full_armor.delete(armor)
  end

  def item_is_equiped?(armor)
    @full_armor.each do |a|
      if a.type == armor.type
        return true
      end
    end
    return false
  end

  def int
    @full_armor.inject(0){|sum, a| sum + a.int}
  end

  def str
    @full_armor.inject(0){|sum, a| sum + a.str}
  end

  def agi
    @full_armor.inject(0){|sum, a| sum + a.agi}
  end

end
