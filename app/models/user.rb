require 'digest/sha2'

class User < ActiveRecord::Base
	after_destroy :ensure_an_admin_remains

	# check that the username is present and unique
	validates :username, presence: true, uniqueness: true

	# validates that the password and confirm password fields match
	validates :password_confirmation, presence: true
	validates :password, confirmation: true

	attr_accessor :password_confirmation
	attr_reader :password

	validate :password_must_be_present

	def User.authenticate(username, password)
		logger.info("--> username: #{username} password: #{password}")
		if user = find_by_username(username)
			if user.hashed_password == encrypt_password(password, user.salt)
				user
			end
		end
	end

	def User.encrypt_password(password, salt)
		Digest::SHA2.hexdigest(password + "wibble" + salt)
	end

	# 'password' is a virtual attribute
	def password=(password)
		logger.info("--> went here")
		@password = password
		if password.present?
			generate_salt
			self.hashed_password = self.class.encrypt_password(password, salt)
		end
	end

	private
	def password_must_be_present
		errors.add(:password, "can't be empty" ) unless hashed_password.present?
	end
	def generate_salt
		self.salt = self.object_id.to_s + rand.to_s
	end

	def ensure_an_admin_remains
		if User.count.zero?
			raise "Can't delete last user"
		end
	end
end
