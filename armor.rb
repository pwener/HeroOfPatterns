class Armor
  attr_reader :name, :type, :int, :agi, :str

  def initialize(name, type, int, agi, str)
    @name = name
    @type = type
    @int = int
    @agi = agi
    @str = str
  end
end
