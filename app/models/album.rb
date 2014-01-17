class Album < ActiveRecord::Base
	belongs_to :artist
	has_many :line_items
	has_many :features_assignments
	has_many :features, through: :features_assignments
	validates :title, :description, :published_date, :genre, :artist_id, :price, :image_path, :presence => true

	before_destroy :ensure_not_referenced_by_any_line_item

	# ensure that there are no line items referencing this product
	def ensure_not_referenced_by_any_line_item
		if line_items.count.zero?
			return true
		else
			errors.add(:base, 'Cannot delete. This product is currently in a line item')
			return false
		end

	end
end
