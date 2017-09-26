class Vampire
  # Your task is to create a Vampire class that stores a list of vampires (a coven, if you will).
  @@coven = []
  #
  # Your class should have the following methods:
  # initialize, which creates a new vampire and assigns values for each of its attributes
  # Every vampire has a name, age, an in_coffin boolean, and a drank_blood_today boolean.
  def initialize(name)
    @name               = name
    @age                = rand(100..3000)
    @in_coffin          = true
    @drank_blood_today  = false
  end
  # create, which creates a new vampire and adds it to the coven
  # drink_blood, which sets a vampire's drank_blood_today boolean to true
  # sunrise, which removes from the coven any vampires who are out of their coffins or who haven't drank any blood in the last day
  # sunset, which sets drank_blood_today and in_coffin to false for the entire coven as they go out in search of blood
  # go_home, which sets a vampire's in_coffin boolean to true

  # Every day at sunset the vampires leave their coffins in search of blood. If they don't drink blood and get back to their coffins before sunrise, they die.
end

vampire_1 = Vampire.new("Dracula")
puts vampire_1.inspect
