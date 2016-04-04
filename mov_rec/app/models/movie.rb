class Movie < ActiveRecord::Base
	validates :movie_name, presence:true
end
