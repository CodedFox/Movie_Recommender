class Profile < ActiveRecord::Base
	belongs_to :user

	has_many :likes_topics
	has_many :topics, through: :likes_topics
	has_many :movie_ratings
end
