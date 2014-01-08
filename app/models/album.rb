class Album < ActiveRecord::Base
	belongs_to :artist
	validates :title, :description, :published_date, :genre, :artist_id, :presence => true
end
