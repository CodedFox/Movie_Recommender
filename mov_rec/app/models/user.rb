class User < ActiveRecord::Base
	# one user can only have one profile
	has_one :profile
	has_many :movie_ratings, through: :profile
	has_many :movies, through: :movie_ratings

	has_many :likes_topics, through: :profile
	has_many :topics, through: :likes_topics


	# must enter a email with proper format
	before_save { self.email = email.downcase }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

    # ensure password is secure (hashed) and length > 6
	has_secure_password
	validates :password, presence: true, length: {minimum: 6}

def self.search(search)
	User.where('lower(email) like lower(:value)', value: "%#{search}%" )
end

end
