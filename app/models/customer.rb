class Customer < ActiveRecord::Base
	has_many :orders
	validates :name, :lastname, :email, presence: true
	validates :email, uniqueness: true
end
