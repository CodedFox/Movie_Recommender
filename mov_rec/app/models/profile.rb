class Profile < ActiveRecord::Base
	
  # each profile belongs to a user
  belongs_to :user

end
