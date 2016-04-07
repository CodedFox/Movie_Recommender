class Movie < ActiveRecord::Base
	has_many :movie_topics
	has_many :movie_ratings

	validates :movie_name, presence:true
end
