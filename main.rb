require_relative 'hero_singleton'
require_relative 'hero'

hero1 = Hero.new('Merovigian', Set.new, 20, 15, 15)
HeroSingleton.instance.chose_hero(hero1)
puts HeroSingleton.instance.hero.talk

# hit without armor
puts HeroSingleton.instance.hero.hit(:physical)

# now equip an armor
malevolance = Armor.new('Malevolance', :chest, 10, 2, 2)

HeroSingleton.instance.hero.equip(malevolance)

# Not permit if you try equip two times
# HeroSingleton.instance.hero.equip(malevolance)

# hit again
puts HeroSingleton.instance.hero.hit(:physical)
puts HeroSingleton.instance.hero.hit(:magical)

HeroSingleton.instance.hero.disarm(malevolance)

# hit again
puts HeroSingleton.instance.hero.hit(:physical)
puts HeroSingleton.instance.hero.hit(:magical)
