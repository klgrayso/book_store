class Employee
	attr_reader :first_name, :last_name
	attr_accessor :title, :manager

	def initialize(first_name, last_name, title, manager=nil)
		@first_name = first_name
		@last_name = last_name
		@title = title
		@manager = manager
	end

	def to_s
		"#{first_name} #{last_name} - #{title}"
	end
	
	def do_some_work!
		puts "I'm doing some work!"
	end
end