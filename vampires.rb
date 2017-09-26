class Vampire
  # CLASS VARIABLES
  @@coven = []

  # INSTANCE METHODS
  # Your class should have the following methods:
  def initialize(name)
    @name               = name
    @age                = rand(100..3000)
    @in_coffin          = [true, false].sample
    @drank_blood_today  = [true, false].sample
  end

  def drink_blood
    @drank_blood_today = true
  end

  def go_home
    @in_coffin = true
  end

  def sunrise
    if self.in_coffin == false || self.drank_blood_today == false
      @@coven.delete(self)
    end
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
  # sunset, which sets drank_blood_today and in_coffin to false for the entire coven as they go out in search of blood

  def self.all
    return @@coven
  end
  # Every day at sunset the vampires leave their coffins in search of blood. If they don't drink blood and get back to their coffins before sunrise, they die.
end

vampire_1 = Vampire.create("Dracula")
vampire_2 = Vampire.create("Mo")
vampire_3 = Vampire.create("Larry")
vampire_4 = Vampire.create("Harry")
puts Vampire.all.inspect
puts vampire_1.sunrise
puts Vampire.all.inspect
#
#
# puts vampire_1.inspect
