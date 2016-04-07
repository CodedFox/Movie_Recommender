class MovieRating < ActiveRecord::Base
	belongs_to :profile
	belongs_to :movie

	has_many :movie_topics, through: :movie
end
