class LineItem < ActiveRecord::Base
	belongs_to :album
	belongs_to :order
	belongs_to :cart

	def total_price
		price * quantity
	end
end
