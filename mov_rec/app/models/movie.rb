class Movie < ActiveRecord::Base
	has_many :movie_topics

	validates :movie_name, presence:true
end
