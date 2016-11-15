# ruby have a singleton module that facilitates the use of this pattern
require 'singleton'
require_relative 'hero'

# To access should use: HeroSingleton.instance
class HeroSingleton
  include Singleton

  def chose_hero(hero)
    @hero = hero
  end

  def hero
    @hero
  end

end
