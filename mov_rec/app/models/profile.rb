class Profile < ActiveRecord::Base
	belongs_to :user

	has_many :likes_topics
	has_many :topics, through: :likes_topics
	has_many :movie_ratings

	has_many :used_devices
	has_many :devices, through: :used_devices
end
