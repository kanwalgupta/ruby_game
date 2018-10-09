class Player

	attr_accessor  :name ,:id ,:lives_left
	def initialize(player_name,id,lives_left)
		@name = player_name
		@id = id
		@lives_left = lives_left
	end
end