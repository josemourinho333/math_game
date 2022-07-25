class Player 

  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def wrong_answer
    @lives -= 1
    puts 'You are wrong'
  end

  def right_answer
    puts 'You are correct'
  end

end
