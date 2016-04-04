class User < ActiveRecord::Base
	# one use can only have one profile
	has_one :profile
	# one user can have many movie watches
	has_many :movie_rating

	# to create a new user, must have a password length > 8
	validates :password, presence: true,
			length: {minimum: 8}

	# must enter a email with proper format
	before_save { self.email = email.downcase }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
