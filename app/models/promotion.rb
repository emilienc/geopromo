class Promotion < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :description, :debut, :fin, :street, :locality,:region,:postal_code,:country
  validates_presence_of :user_id
  acts_as_geocodable :units => :kilometers
  
  def adresse
    [street,locality,postal_code,country].join(' ')
  end
  
end
