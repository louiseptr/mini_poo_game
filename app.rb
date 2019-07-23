require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Harry Potter")
player2 = Player.new("Voldemort")

  puts "Bienvenue ce soir pour un combat entre #{player1.name} et #{player2.name}."
  puts "Voici leur état:"
#check if players are still alive and if so show their state
  while (player1.life_points > 0) || (player2.life_points > 0)
  player1.show_state
  player2.show_state

  puts "--------------------------------------------------"
  puts "AVADA KEDAVRA"
  puts "--------------------------------------------------"
#attacks between the 2 and check if dead or not, if dead, stop
  player1.attacks(player2)
  break if player2.life_points <= 0
  player2.attacks(player1)
  break if player1.life_points <= 0


end

  binding pry
