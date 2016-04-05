class Topic < ActiveRecord::Base
	has_many :movie_topics
	has_many :likes_topics
end
