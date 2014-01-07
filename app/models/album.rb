class Album < ActiveRecord::Base
	belongs_to :artist
	validates :title, :artist, :description, :published_date, :genre, :artist_id, :presence => true
end
