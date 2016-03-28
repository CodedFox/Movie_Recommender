class ActorRole < ActiveRecord::Base
  belongs_to :actor
  belongs_to :role
end
