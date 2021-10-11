class GameLoop
  attr_accessor :name, :currentPlayer
  @@turn = 0

  def initialize(gamename)
    @name = gamename
    @player1 = Players.new("player 1")
    @player2 = Players.new("player 2")
  end

  def next_question
    @question = Questions.new
    if @@turn % 2 === 0
      puts "player 1:"
      puts "#{@question.question}"
    else
      puts "player 2:"
      puts "#{@question.question}"
    end
  end

  def input
    @answer = gets.chomp.to_i
  end

  def is_correct
    if @answer == @question.answer
      true 
    else
      false
    end
  end

  def evaluate_turn
    if !is_correct
      if @@turn % 2 === 0
        @player1.lose_life
        puts "Player 1: #{@player1.lives}/3", "Player 2: #{@player2.lives}/3"
        return
      else 
       @player2.lose_life
       puts "Player 1: #{@player1.lives}/3", "Player 2: #{@player2.lives}/3"
       return
      end
    else
      puts "Correct!"
      puts "Player 1: #{@player1.lives}/3", "Player 2: #{@player2.lives}/3"
    end
  end

  def continue_game
    if @player1.is_alive && @player2.is_alive
      true
    end
  end

  def turn
    if continue_game
      puts "----------"
      puts "next question:"
      @@turn += 1
    elsif !@player1.is_alive
      puts "Sorry Player 1 you lost :("
    else
      puts "Sorry Player 2 you lost :("
    end
  end

end

