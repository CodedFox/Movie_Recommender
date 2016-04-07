class MovieTopic < ActiveRecord::Base
	belongs_to :movie
	belongs_to :topic

	has_many :movie_ratings, through: :movie
end
