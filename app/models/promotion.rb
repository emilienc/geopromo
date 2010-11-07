class Promotion < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :description, :debut, :fin
  validates_presence_of :user_id
end
