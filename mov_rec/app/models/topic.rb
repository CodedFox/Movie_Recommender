class Topic < ActiveRecord::Base
	has_many :movie_topics
	has_many :movies, through: :movie_topics
	has_many :likes_topics

def self.search(search)
	Topic.where('lower(genre_name) like lower(:value)', value: "%#{search}%" )
end

end
