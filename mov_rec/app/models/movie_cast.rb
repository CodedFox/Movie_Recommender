class MovieCast < ActiveRecord::Base
  belongs_to :movie
  belongs_to :actor
  belongs_to :casting_type
end
