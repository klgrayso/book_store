class CoffeeShop
	attr_reader :event, :date, :num_people
	attr_accessor :event, :date, :num_people

	def initialize(event, date, num_people)
		@event = event
		@date = date
		@num_people = num_people
	end

	def to_s
		"#{event} #{date} - #{num_people} people"
	end
	

end