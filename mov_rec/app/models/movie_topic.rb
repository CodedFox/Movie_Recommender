class MovieTopic < ActiveRecord::Base
	belongs_to :movie
	belongs_to :topic
end
