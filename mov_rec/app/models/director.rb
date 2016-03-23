class Director < ActiveRecord::Base
	validates :first_name, presence:true
end
