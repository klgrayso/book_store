class CoffeeShop
	attr_reader :menu_item, :description, :price
	attr_accessor :menu_item, :description, :price

	def initialize(menu_item, description, price)
		@menu_item = menu_item
		@description = description
		@price = price
	end

	def to_s
		"#{menu_item} #{description} - #{price}"
	end
	

end