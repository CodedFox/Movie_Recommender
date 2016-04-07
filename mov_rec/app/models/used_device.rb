class UsedDevice < ActiveRecord::Base
	belongs_to :profile
	belongs_to :device
end
