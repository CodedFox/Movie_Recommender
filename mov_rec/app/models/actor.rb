class Actor < ActiveRecord::Base
	validates :first_name, presence:true
end
