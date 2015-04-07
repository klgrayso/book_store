class BookStore
	attr_accessor :employees, :inventory, :status, :managers, :coffee_shop, :events


	def initialize(opts={})
		@employees = opts[:employees]
		@inventory = opts[:inventory]

		@status = 'closed'

		@managers = opts[:managers]
		@coffee_shop = opts[:coffee_shop]
		@events = opts[:events]
	end
	def yassi
		puts "this is yassis method"

	end

	def list_all_employees
		puts "---The store employs the following people---"
		employees.each do |employee|
			puts employee
		end
	end

	def list_all_inventory
		puts "---The store inventory includes the following---"
		inventory.each { |item| puts item }
	end

	def list_all_managers
		puts "---The following people are managers at the store---"
		managers.each do |manager|
			puts manager
		end
		
	end

	def list_all_coffee_shop
		puts "---Listed are a few of our menu items---"
		coffee_shop.each do |coffee_shop|
			puts coffee_shop
		end
		
	end

	def list_all_events
		puts "---Upcoming events---"
		events.each do |event|
		#	puts "#{event} people" 
		puts event
		end
		
	end

	def open_or_close_store
		if status == 'closed'
			status = 'open'
		elsif status == 'open'
			status = 'closed'
		else
			puts 'Your status is a strange format. Please set it to open or closed'
		end
	end
end