class Director < ActiveRecord::Base
	validates :first_name, presence:true

	has_many :directs

def self.search(search)
	Director.where('first_name like :value OR last_name like :value', value: "%#{search}%" )
end

end
