$LOAD_PATH << '.'
require 'superpowers.rb'

class Animal
  include Superpowers
  attr_accessor :num_of_legs, :diet

  def initialize(diet, num_of_legs)
    @diet = diet
    @num_of_legs = num_of_legs
  end

  def cold_blooded?
    false
  end

  def superpower
    power = Superpowers.lasers
  end
end

class Mammal < Animal
  def initialize(diet, num_of_legs)
    super
  end
end

class Amphibian < Animal
  def initialize(diet="omnivore", num_of_legs="4")
    super
  end

  def cold_blooded?
    true
  end
end

class Primate < Mammal
  attr_reader :num_of_arms
  def initialize(diet, num_of_legs=2, num_of_arms=2)
    super(diet, num_of_legs)
    @num_of_arms = num_of_arms
  end

  def superpower
    power = Superpowers.transform
  end
end

class Bat < Mammal
  def initialize(diet, num_of_legs=2)
    @diet = diet
    @num_of_legs = num_of_legs
  end
end


class Frog < Amphibian
  # def initialize(diet, num_of_legs)
  #   super
  # end
end

class Chimpanzee < Primate
  def superpower
    power = Superpowers.lasers
  end
end

dog = Mammal.new("omnivore", 4)
# p dog.num_of_legs
# p dog.diet

dracula = Bat.new("omnivore", 2)
# p dracula.num_of_legs

bobo = Primate.new("omnivore")
# puts " This is how many legs Bobo has: #{bobo.num_of_legs}"
# puts " This is what Bobo eats: #{bobo.diet}"
# puts " This is how many arms Bobo has: #{bobo.num_of_arms}"
# puts " Bobo's power is: #{bobo.superpower}"

bubbles = Chimpanzee.new("omnivore")
# puts " This is how many legs bubbles has: #{bubbles.num_of_legs}"
# puts " This is what bubbles eats: #{bubbles.diet}"
# puts " This is how many arms bubbles has: #{bubbles.num_of_arms}"
# puts " bubbles's power is: #{bubbles.superpower}"

mr_frog = Frog.new()

# p mr_frog