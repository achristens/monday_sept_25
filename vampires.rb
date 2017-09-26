class Vampire
  # CLASS VARIABLES
  @@coven = []

  # INSTANCE METHODS
  # Your class should have the following methods:
  def initialize(name)
    @name               = name
    @age                = rand(100..3000)
    @in_coffin          = true
    @drank_blood_today  = false
  end

  def drink_blood
    @drank_blood_today = true
  end

  def go_home
    @in_coffin = true
  end

  # READERS
  def drank_blood_today
    @drank_blood_today
  end

  def in_coffin
    @in_coffin
  end

  # CLASS METHODS
  def self.create(name)
    new_vampire = Vampire.new(name)
    @@coven << new_vampire
    return new_vampire
  end

  # sunrise, which removes from the coven any vampires who are out of their coffins or who haven't drank any blood in the last day
  # sunset, which sets drank_blood_today and in_coffin to false for the entire coven as they go out in search of blood

  # Every day at sunset the vampires leave their coffins in search of blood. If they don't drink blood and get back to their coffins before sunrise, they die.
end

vampire_1 = Vampire.create("Dracula")
puts vampire_1.inspect
puts vampire_1.go_home
puts vampire_1.inspect
