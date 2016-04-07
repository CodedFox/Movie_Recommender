class Profile < ActiveRecord::Base
	# each profile belongs to a user
	belongs_to :user
	# each profile can have many topics liked
	has_many :likes_topics
	# each profile can have many topics liked
	has_many :movie_ratings
end
