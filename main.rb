require './game.rb'
require './question.rb'
require './player.rb'

player_1 = Player.new("Player 1",1,3)
player_2 = Player.new("Player 2",2,3)
question = Question.new

game = Game.new(player_1,player_2,question)
game.start

