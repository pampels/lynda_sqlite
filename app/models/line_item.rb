class LineItem < ActiveRecord::Base
	belongs_to :album
	belongs_to :order
	belongs_to :cart
end
