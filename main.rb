
require './Player.rb'
require './Question.rb'
require './Gameplay.rb'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

new_game = Gameplay.new(player1, player2)

puts "*** LET THE GAME BEGIN! ***"
new_game.new_turn