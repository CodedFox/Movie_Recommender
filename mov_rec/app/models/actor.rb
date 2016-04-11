class Actor < ActiveRecord::Base
	validates :first_name, presence:true

	has_many :movie_casts
	has_many :movies, through: :movie_casts
	has_many :casting_types, through: :movie_casts

	has_many :actor_roles

def self.search(search)
	Actor.where("lower(first_name)|| ' '|| lower(last_name) like lower(:value)",value: "%#{search}%" )
end

def full_name
    "#{first_name} #{last_name}"
end

end
