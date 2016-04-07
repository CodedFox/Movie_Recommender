class MovieRole < ActiveRecord::Base
	belongs_to :movie
	belongs_to :role

	has_many :movie_casts, through: :movie
end
