require_relative 'book_store'
require_relative 'employee'
require_relative 'book'
require_relative 'manager'
require_relative 'coffee_shop'
require_relative 'events'

books = [
	{ title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', pub_date: 1925 },
	{ title: 'Their Eyes Were Watching God', author: 'Zora Neale Hurston', pub_date: 1937 }
]

books_for_store = []

books.each do |book|
	books_for_store << Book.new(book[:title], book[:author], book[:pub_date])
end

employees = [
	{ first_name: 'John', last_name: 'Smith', title: 'Bouncer' },
	{ first_name: 'Robert', last_name: 'Jones', title: 'Salesclerk' }
]

employees_for_store = []

employees.each do |employee|
	new_employee = Employee.new(
		employee[:first_name],
		employee[:last_name],
		employee[:title]
	)
	employees_for_store << new_employee
end

managers = [
	{ first_name: 'Cindy', last_name: 'Thompson', title: 'General Manager' },
	{ first_name: 'Michael', last_name: 'Wilson', title: 'Assistant Manager' }
]

managers_for_store = []

managers.each do |manager|
	new_manager = Manager.new(
		manager[:first_name],
		manager[:last_name],
		manager[:title]
	)
	managers_for_store << new_manager
end

coffee_shop = [
	
	{ menu_item: 'Iced Caramel Macchiato', description: 'Espresso combined with vanilla-flavored syrup, milk and caramel sauce over ice.', price: '$6.50' },
	{ menu_item: 'Double Chocolate Chunk Brownie', description: 'Rich chocolate brownie with premium cocoa and generous chunks of chocolate.', price: '$2.89' }
]

coffee_shop_for_store = []

coffee_shop.each do |coffee_shop|
	new_coffee_shop_item = Manager.new(
		coffee_shop[:menu_item],
		coffee_shop[:description],
		coffee_shop[:price]
	)
	coffee_shop_for_store << new_coffee_shop_item
end

events = [
	
	{ event: "Children's Book Reading", date:'5/9/2015', num_people: '20' },
	{ event: 'J.K. Rowling Book Signing', date:'7/18/2015', num_people: '500' }
]

events_for_store = []

events.each do |event|
	new_event = Manager.new(
		event[:event],
		event[:date],
		event[:num_people]
	)
	events_for_store << new_event
end
book_store = BookStore.new({employees: employees_for_store, inventory: books_for_store, managers: managers_for_store, coffee_shop: coffee_shop_for_store, events: events_for_store})

book_store.list_all_employees

book_store.list_all_inventory

book_store.list_all_managers

book_store.list_all_coffee_shop 

book_store.list_all_events