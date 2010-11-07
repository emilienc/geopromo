class Promotion < ActiveRecord::Base
  attr_accessible :user_id, :description, :debut, :fin
end
