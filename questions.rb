class Questions
  attr_accessor :question, :answer
  @@question_number = 0
  
  def initialize
    @sum1 = rand(21)
    @sum2 = rand(21)
    @@question_number += 1;
  end

  def question
    puts "What is #{@sum1} + #{@sum2}?"
  end

  def answer
    @answer = @sum1 + @sum2
  end

end


