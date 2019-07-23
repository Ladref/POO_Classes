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

  def show_state
    puts "The player #{@name} has #{@life_points} life points and a weapon_level #{weapon_level}."
  end

  def compute_damage
      rand(1..6) * @weapon_level
  end

  def search_weapon
    level = rand(1..6)
    puts "You find a weapon of level #{level}!"
    if level > weapon_level
      puts "This new weapon is better than the previous one: Take it!"
      weapon_level = level
    else
      puts "Shit! This weapon is not better than your current one!"
    end
  end

  def search_health_pack
    health_level = rand(1..6)
    if health_level == 1
      puts "You did not find anything"
    elsif health_level.between?(2,5) #(2 <= health_level) && (health_level<= 5)
      puts "Congrats! You've just found a +50 health pack!"
      @life_points + 50 > 100 ? @life_points = 100 : @life_points += 50
    else
      puts "Congrats! You've just found a +80 health pack!"
      @life_points + 80 > 100 ? @life_points = 100 : @life_points += 80
    end
  end


# End of the class HumanPlayer
end

binding.pry
