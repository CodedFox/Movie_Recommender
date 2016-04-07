class Director < ActiveRecord::Base
	validates :first_name, presence:true

	has_many :directs
end
