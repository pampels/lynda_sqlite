class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	def add_album(album_id)
		current_item = line_items.where(album_id: album_id).first
		if current_item
			current_item.quantity += 1
		else
			current_item = line_items.build(:album_id => album_id)
		end
		return current_item
	end
end
