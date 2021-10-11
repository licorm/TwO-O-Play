# class1 = players, includes lives
# will contain methods to lose lives
# lives, player name

# class2 = math questions, includes answers
# will contain methods to create questions and determine if the questions are right or wrong

# class3 = game loop
# method to call questions and players and replay
# will determine if player wins or loses
# will contain user I/O

require './players'
require './questions'
require './gameLoop'

gameloop = GameLoop.new("game 1")
while (gameloop.continue_game) do
gameloop.next_question
gameloop.input
gameloop.evaluate_turn
gameloop.turn
end



