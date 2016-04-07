class MovieRole < ActiveRecord::Base
	belongs_to :movie
	belongs_to :role
end
