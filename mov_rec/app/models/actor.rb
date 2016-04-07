class Actor < ActiveRecord::Base
	validates :first_name, presence:true

	has_many :movie_casts
	has_many :actor_roles
end
