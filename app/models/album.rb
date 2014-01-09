class Album < ActiveRecord::Base
	belongs_to :artist
	has_many :line_items
	has_many :features_assignments
	has_many :features, through: :features_assignments
	validates :title, :description, :published_date, :genre, :artist_id, :price, :presence => true
end
