class Players
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lives
    @lives
  end

  def lose_life
    @lives -= 1
    puts "You lost a life."
  end

  def is_alive
    if @lives > 0
      true
    end
  end

end



