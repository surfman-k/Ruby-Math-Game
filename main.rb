require "./new-game.rb"
require "./new-question.rb"

game1 = MathGame.new
player = "Player 1"
 
puts "Welcome to the best Math game in the world!"
puts "Each player start with 3 lives. First one to lose their 3 lives loses!"
puts "Let's get right to it! Player 1 you start!"

while (game1.player1_score > 0 && game1.player2_score > 0) do
	question = Question.new(player)
	puts "#{question.current_player}, what is: #{question.new_question}"
	answer = gets.chomp
	if answer.to_i == (question.int1 + question.int2)
		puts "Good stuff! Scores are still Player 1: #{game1.player1_score}/3 vs Player 2: #{game1.player2_score}/3"
		if player == "Player 1"
			player = "Player 2"
		else
			player = "Player 1"
		end
	else
		if player == "Player 1"
			game1.player1_score -= 1
			player = "Player 2"
		else
			game1.player2_score -= 1
			player = "Player 1"
		end
		puts "Terrible! Scores are now Player 1: #{game1.player1_score}/3 vs Player 2: #{game1.player2_score}/3"
	end
end

if game1.player1_score == 0
	puts "-----GAME OVER------"
	puts "Player 2 wins with a score of #{game1.player2_score}/3"
else
	puts "-----GAME OVER------"
	puts "Player 1 wins with a score of #{game1.player1_score}/3"
end