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
      @speed    = @@default_speed
      @strength = @@default_strength
    elsif speed > @@max_speed && strength <= @@max_strength
      @speed    = @@default_speed
      @strength = strength
    elsif speed <= @@max_speed && strength > @@max_strength
      @speed = speed
      @strength = @@default_strength
    elsif speed <= @@max_speed && strength <= @@max_strength
        @speed    = speed
        @strength = strength
    end
  end

  def encounter

  end

  def outrun_zombie?

  end

  def survive_attack?

  end

  # CLASS METHODS
  def self.all

  end

  def self.new_day

  end

  def self.some_die_off

  end

  def self.spawn

  end

  def self.increase_plague_level

  end
end

zombie_1 = Zombie.new(7, 10)
puts zombie_1.inspect
