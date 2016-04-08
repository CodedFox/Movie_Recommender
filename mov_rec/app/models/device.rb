class Device < ActiveRecord::Base
	has_many :used_devices
	has_many :profiles, through: :used_devices
end
