class Question

	attr_accessor :current_player
	attr_accessor :int1
	attr_accessor :int2

	def initialize(player)
		@current_player = player	
	end

	def new_question
		@int1 = rand(20)
		@int2 = rand(20)
		return "#{@int1} + #{@int2}"
	end
end