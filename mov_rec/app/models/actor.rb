class Actor < ActiveRecord::Base
	validates :first_name, presence:true

	has_many :movie_casts
	has_many :actor_roles

def self.search(search)

	Actor.where("first_name like :value OR last_name like :value",value: "%#{search}%" )
end

end
