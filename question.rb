class Question

	def generate_question_and_answer
		num_1 = rand(1..20)
		num_2 = rand(1..20)
		question = "What does #{num_1} plus #{num_2} equal?"
		answer= num_1 + num_2
	    ([question,answer])
	end

end