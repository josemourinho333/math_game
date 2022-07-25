require './player'
require './game_master'


puts 'New game started.'
player1 = Player.new('Player 1')
player2 = Player.new('Player 2')
player2.wrong_answer

life = player1.lives >= player2.lives ? player2.lives : player1.lives
turn = 0

while (life > 0) 
  which_player = turn == 0 ? player1 : player2

  game_turn = Game.new(which_player.name)
  puts "Pick two numbers between 1 and 20"
  reply = gets.chomp.split(' ')
  number_a = reply[0].to_i
  number_b = reply[1].to_i

  puts "What is the sum of #{number_a} and #{number_b}?"
  answer = number_a + number_b
  user_answer = gets.chomp.to_i

  if game_turn.evaulate(user_answer, answer)
    which_player.right_answer
  else if !game_turn.evaulate(user_answer, answer)
    which_player.wrong_answer
  end

  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"

  if turn == 0 
    turn += 1
  else if turn == 1
    turn -= 1
  end

end

winner = player1.lives > player2.lives ? player1 : player2
puts "Winner is #{winner.name} with #{winner.lives}"
end

end