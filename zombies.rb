require 'pry'

class Zombie
  # CLASS VARIABLES:
  @@horde            = []
  # This value will increase over time:
  @@plague_level     = 10
  # These values won't change:
  @@max_speed        = 5
  @@max_strength     = 8
  @@default_speed    = 1
  @@default_strength = 3

  # INSTANCE METHODS
  def initialize(speed, strength)
    if speed > @@max_speed && strength > @@max_strength
      @speed      = @@default_speed
      @strength   = @@default_strength
    elsif speed > @@max_speed && strength <= @@max_strength
      @speed      = @@default_speed
      @strength   = strength
    elsif speed <= @@max_speed && strength > @@max_strength
      @speed      = speed
      @strength   = @@default_strength
    elsif speed <= @@max_speed && strength <= @@max_strength
        @speed    = speed
        @strength = strength
    end
    # puts "Zombie Stats: Speed=#{@speed}, Strength=#{@strength}"
  end

  def encounter
    # Outcome 1: escape alive
    if outrun_zombie? && survive_attack?
      puts "You got away"
    # Outcome 2: now a zombie
    elsif
      rand_speed    = rand(@@max_speed + 1)
      rand_strength = rand(@@max_strength + 1)
      @@horde << Zombie.new(rand_speed, rand_strength)
      puts "You are now a zombie"
    else
      puts "You died"
    end
  end

  def outrun_zombie?
    my_speed = rand(@@max_speed + 1)
    if my_speed > @speed
      return true
    else
      return false
    end
  end

  def survive_attack?
    my_strength = rand(@@max_strength + 1)
    if my_strength > @strength
      return true
    else
      return false
    end
  end

  # READERS
  def strength
    @strength
  end

  def speed
    @speed
  end

  # CLASS METHODS
  def self.all
    return @@horde
  end

  def self.new_day
    self.some_die_off
    self.spawn
    self.increase_plague_level
  end

  def self.some_die_off
    rand(11).times do @@horde.delete_at(0)
    end
  end

  def self.spawn
    spawn_number    = rand(@@plague_level + 1)
    spawn_number.times do
      rand_speed    = rand(@@max_speed + 1)
      rand_strength = rand(@@max_strength + 1)
    @@horde << Zombie.new(rand_speed, rand_strength)
    end
  end

  def self.increase_plague_level
    new_plague_level = rand(3)
    @@plague_level += new_plague_level
  end
end
#
puts Zombie.all.inspect # []
Zombie.new_day
puts Zombie.all.inspect # [#<Zombie:0x005626ecc5ebd0 @speed=4, @strength=0>, #<Zombie:0x005626ecc5eba8 @speed=0, @strength=4>, #<Zombie:0x005626ecc5eb80 @speed=4, @strength=4>]
zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]
puts zombie1.encounter # You are now a zombie
puts zombie2.encounter # You died
puts zombie3.encounter # You died
Zombie.new_day
puts Zombie.all.inspect # [#<Zombie:0x005626ecc5e1f8 @speed=0, @strength=0>, #<Zombie:0x005626ecc5e180 @speed=3, @strength=3>, #<Zombie:0x005626ecc5e158 @speed=1, @strength=2>, #<Zombie:0x005626ecc5e090 @speed=0, @strength=4>]
zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]
puts zombie1.encounter # You got away
puts zombie2.encounter # You are now a zombie
puts zombie3.encounter # You died
