require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "------------------------------------------------
|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
|Le but du jeu est d'être le dernier survivant !|
-------------------------------------------------"

# Creation of the human player
puts "Please, give me a username:"
username = gets.chomp
human_player = HumanPlayer.new("#{username}")
puts "\n"

# Creation of the bot players
ennemis = []
bot_player1 = Player.new("josiane")
bot_player2 = Player.new("josé")
ennemis.push(bot_player1, bot_player2)

human_player.show_state
puts "What do you want to do?"
puts "\n"
puts "a - Find a new weapon"
puts "s - Search for medicine"
puts "\n"
puts "Attack someone:"
print "0 - "
bot_player1.show_state
puts "\n"
print "1 - "
bot_player2.show_state

#while (human_player.life_points > 0) && (bot_player1.life_points > 0) || (bot_player2.life_points > 0)
#  human_player.show_state
#  puts "What do you want to do?"
#  puts "\n"
#  puts "a - Find a new weapon"
#  puts "s - Search for medicine"
#  puts "\n"
#  puts "Attack someone:"
#  puts "0 - #{bot_player1.show_state}"
#  puts "1 - #{bot_player2.show_state}"
#end
