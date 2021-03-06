class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	def add_album(album_id, price)
		current_item = line_items.where(album_id: album_id).first
		if current_item
			current_item.quantity += 1
		else
			current_item = line_items.build(album_id: album_id, price: price)
		end
		return current_item
	end

	def total_price
		line_items.to_a.sum { |line_item| line_item.total_price }
	end
end
