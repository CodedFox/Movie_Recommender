class Sponsor < ActiveRecord::Base
  belongs_to :movie
  belongs_to :studio
end
