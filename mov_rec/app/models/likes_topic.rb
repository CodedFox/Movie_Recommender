class LikesTopic < ActiveRecord::Base
  belongs_to :profile
  belongs_to :topic
end
