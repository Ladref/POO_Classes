require 'pry'

class Player
  attr_accessor :name, :life_points

  def initialize(name, life_points=10)
    @name = name
    @life_points = life_points
  end

  def show_state
    puts "The player #{@name} has #{@life_points} life points."
  end

  def gets_damage(damage)
    @life_points -= damage
    if @life_points <= 0
      @life_points = 0
    puts "The player #{@name} is dead!"
    end
  end

  def attacks(player2)
    puts "The player #{@name} is attacking the player #{player2.name}"
    damage_done = compute_damage
    puts "He inflicts to him #{damage_done} points of damage."
    player2.gets_damage(damage_done)
  end

  def compute_damage
    return rand(1..6)
  end

# End of the class Player
end


class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name, life_points=100, weapon_level=1)
    @weapon_level = weapon_level
    super(name, life_points)
  end




  

# End of the class HumanPlayer
end
