class Role < ActiveRecord::Base
	has_many :movie_roles
	has_many :actor_roles
end
