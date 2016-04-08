class Topic < ActiveRecord::Base
	has_many :movie_topics
	has_many :likes_topics

def self.search(search)
	Topic.where('genre_name like :value', value: "%#{search}%" )
end

end
