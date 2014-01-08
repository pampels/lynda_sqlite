class Feature < ActiveRecord::Base
	validates :name, presence: true
end
