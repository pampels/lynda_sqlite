class Artist < ActiveRecord::Base
	validates :name, :biography, :birthdate, :presence => true
end
