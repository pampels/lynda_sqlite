class Feature < ActiveRecord::Base
	has_many :features_assignments
	has_many :albums, through: :features_assignments
	validates :name, presence: true
end
