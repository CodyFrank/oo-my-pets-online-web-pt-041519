require"pry"
class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
end
