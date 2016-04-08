class Movie < ActiveRecord::Base
	has_many :movie_topics
	has_many :movie_ratings
	has_many :sponsors
	has_many :directs
	has_many :movie_casts

	validates :movie_name, presence:true

def self.search(s)
	byebug
	Movie.where('movie_name like :value', value: "%#{s}%" )
end

end
