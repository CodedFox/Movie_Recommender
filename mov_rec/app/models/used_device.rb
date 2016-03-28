class UsedDevice < ActiveRecord::Base
  belongs_to :user
  belongs_to :device
end
