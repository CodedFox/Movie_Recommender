class Movie < ActiveRecord::Base
	has_many :movie_topics
	has_many :movie_ratings
	has_many :sponsors

	validates :movie_name, presence:true
end
