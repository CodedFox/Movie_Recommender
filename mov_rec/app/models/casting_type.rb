class CastingType < ActiveRecord::Base
	has_many :movie_casts
	has_many :movies, through: :movie_casts
	has_many :actors, through: :movie_casts
end
