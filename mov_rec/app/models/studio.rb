class Studio < ActiveRecord::Base
	has_many :sponsors

def self.search(search)
	Studio.where('lower(studio_name) like lower(:value)', value: "%#{search}%" )
end

end
