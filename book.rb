class Book
	attr_reader :title, :author, :publication_year

	def initialize(title, author, publication_year)
		@title = title
		@author = author
		@publication_year = publication_year
	end

	def to_s
		"#{title} by #{author}, published in #{publication_year}"
	end
end