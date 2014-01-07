class Album < ActiveRecord::Base
	validates :title, :artist, :description, :published_date, :genre, :artist_id, :presence => true
end
