class Manager
	attr_reader :first_name, :last_name
	attr_accessor :title, :manager

	def initialize(first_name, last_name, title, manager=nil)
		@first_name = first_name
		@last_name = last_name
		@title = title
	end

	def to_s
		"#{first_name} #{last_name} - #{title}"
	end
	

end