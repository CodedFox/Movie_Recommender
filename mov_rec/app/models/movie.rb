class Movie < ActiveRecord::Base
	validates :movie_name, presence:true

	has_many :movie_topics
end
