class Actor < ActiveRecord::Base
	validates :first_name, presence:true

	has_many :movie_casts
	has_many :actor_roles

def self.search(search)

	Actor.where("lower(first_name) like lower(:value) OR lower(last_name) like lower(:value)",value: "%#{search}%" )
end

end
