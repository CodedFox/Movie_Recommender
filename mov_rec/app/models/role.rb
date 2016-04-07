class Role < ActiveRecord::Base
	has_many :movie_roles
end
