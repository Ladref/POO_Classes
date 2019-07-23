require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Josiane")
player2 = Player.new("José")

puts "\n"
puts "Let's start the fight!\n\n"

while (player1.life_points > 0) || (player2.life_points > 0)
  puts "Here are the health status of the player:\n"
  puts "----"
  player1.show_state
  player2.show_state
  puts "----"
  puts "\n"

  puts "Let's attack!\n"
  puts "=================================================="
  player1.attacks(player2)
  break if player2.life_points <= 0
  puts "=================================================="
  player2.attacks(player1)
  break if player1.life_points <= 0
  puts "=================================================="
  puts "\n"
end

puts "\n"
puts "End of the game"
puts "----"
player1.show_state
player2.show_state
