require_relative 'player'
require_relative 'question'
require_relative 'game'



player1 = MathGame::Player.new('Rayhaneh')
player2 = MathGame::Player.new('Bhav')


newGame = MathGame::Game.new(player1, player2)
newGame.start





