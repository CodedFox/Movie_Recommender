class Studio < ActiveRecord::Base
	has_many :sponsors

	has_many :movies, through: :sponsors
	has_many :movie_casts, through: :movies

def self.search(search)
	Studio.where('lower(studio_name) like lower(:value)', value: "%#{search}%" )
end

end
