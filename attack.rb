# Strategy pattern, each perform method have different behavior
class Attack
  attr_accessor :damage

  # abstract method, should be overhides
  def perform
    raise NotImplementedError
  end
end
