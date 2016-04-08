class Studio < ActiveRecord::Base
	has_many :sponsors

def self.search(search)
	Studio.where('studio_name like :value', value: "%#{search}%" )
end

end
