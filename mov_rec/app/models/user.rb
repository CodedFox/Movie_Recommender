class User < ActiveRecord::Base
	# one use can only have one profile
	has_one :profiles 

	# to create a new user, must have a password length > 8
	validates :password, presence: true,
			length: {minimum: 8}
	# must enter a email
	validates :email, presence: true
end
