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
    puts "Zombie Stats: Speed=#{@speed}, Strength=#{@strength}"
  end

  def encounter

  end

  def outrun_zombie?

  end

  def survive_attack?

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

  end

  def self.some_die_off

  end

  def self.spawn
    spawn_number = rand(@@plague_level + 1)
    new_zombies  = spawn_number.times {Zombie.new(rand(@@max_speed + 1),rand(@@max_strength + 1))}
    @@horde << new_zombies
    return new_zombies
  end

  def self.increase_plague_level

  end
end
#
# zombie_1 = Zombie.new(7, 10)
# puts zombie_1.inspect
puts Zombie.spawn
