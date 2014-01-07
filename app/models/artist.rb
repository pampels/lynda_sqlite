class Artist < ActiveRecord::Base
	has_many :albums
	validates :name, :biography, :birthdate, :presence => true
end
