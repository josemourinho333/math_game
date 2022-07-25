class Game 

  def initialize(name)
    @name = name
    puts "#{name}'s turn"
  end

  # def get_numbers()
  #   puts "Pick two numbers between 1 and 20"
  #   reply = gets.chomp.split(' ')
  #   @number_a = reply[0]
  #   @number_b = reply[1]
  # end

  def evaluate (user_answer, answer)
    if user_answer != answer
      false
    else if user_answer == answer
      true
  end

end
end
end