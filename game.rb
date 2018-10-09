require './player'
require './question'

class Game
	def initialize(player_1,player_2,question)
		@player_1 = player_1
		@player_2 = player_2
		@question = question
		@current_player = player_1
	end

	def end_game
		if(@player_1.lives_left == 0)
			puts "#{@player_2.name} wins with a score of #{@player_2.lives_left}/3"
		else
			puts "#{@player_1.name} wins with a score of #{@player_1.lives_left}/3"
		end
            puts "----- GAME OVER -----"
		    puts "Good bye!"
	end
	def start
		while @player_1.lives_left >0 && @player_2.lives_left > 0 do
			question_and_answer = @question.generate_question_and_answer
			ques = question_and_answer[0]
			answer = question_and_answer[1]
			puts "#{@current_player.name} : #{ques}"
			print ">"
			player_answer = $stdin.gets.chomp
			if !( player_answer.to_i == answer)
				@current_player.lives_left = @current_player.lives_left - 1
			    puts "#{@current_player.name} : Seriously? No!"
			else
				puts "#{@current_player.name} : YES! You are correct."

			end
			puts "P1:(#{@player_1.lives_left}/3) vs P2:(#{@player_2.lives_left}/3)"
			if @player_1.lives_left >0 && @player_2.lives_left > 0
				puts "----- NEW TURN -----"
			end
			if ( @current_player == @player_1)
				@current_player = @player_2
			else
				@current_player = @player_1
			end
        end
    	end_game
   	end
	

end