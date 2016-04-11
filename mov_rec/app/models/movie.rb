class Movie < ActiveRecord::Base
	has_many :movie_topics
	has_many :topics, through: :movie_topics

	has_many :movie_casts
	has_many :actors, through: :movie_casts
	has_many :casting_types, through: :movie_casts

	has_many :movie_ratings
	has_many :sponsors
	has_many :studios, through: :sponsors
	has_many :directs
	has_many :directors, through: :directs

	has_many :actors, through: :movie_casts

	validates :movie_name, presence:true

def self.search(search)
	Movie.where('lower(movie_name) like lower(:value)', value: "%#{search}%" )
end

end
