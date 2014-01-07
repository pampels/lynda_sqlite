class Album < ActiveRecord::Base
	validates :title, :artist, :description, :published_date, :genre, :presence => true
end
