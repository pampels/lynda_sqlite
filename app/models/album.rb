class Album < ActiveRecord::Base
	validates :title, :artist, :description, :published_date, :presence => true
end
