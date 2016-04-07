class MovieRating < ActiveRecord::Base
	belongs_to :profile
	belongs_to :movie
end
