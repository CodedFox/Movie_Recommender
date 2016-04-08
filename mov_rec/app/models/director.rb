class Director < ActiveRecord::Base
	validates :first_name, presence:true

	has_many :directs

def self.search(search)
	Director.where("lower(first_name)|| ' '|| lower(last_name) like lower(:value)",value: "%#{search}%" )
end

end
